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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      214     61     50     11
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      214     42     26     16
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      214     28     21      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      214     83     56     27
3 months    ki0047075b-MAL-ED          BRAZIL                         Q4      232     79     63     16
3 months    ki0047075b-MAL-ED          BRAZIL                         Q1      232     47     42      5
3 months    ki0047075b-MAL-ED          BRAZIL                         Q2      232     44     35      9
3 months    ki0047075b-MAL-ED          BRAZIL                         Q3      232     62     54      8
3 months    ki0047075b-MAL-ED          INDIA                          Q4      220     63     50     13
3 months    ki0047075b-MAL-ED          INDIA                          Q1      220     35     29      6
3 months    ki0047075b-MAL-ED          INDIA                          Q2      220     52     35     17
3 months    ki0047075b-MAL-ED          INDIA                          Q3      220     70     50     20
3 months    ki0047075b-MAL-ED          NEPAL                          Q4      225     20     16      4
3 months    ki0047075b-MAL-ED          NEPAL                          Q1      225     30     25      5
3 months    ki0047075b-MAL-ED          NEPAL                          Q2      225     66     52     14
3 months    ki0047075b-MAL-ED          NEPAL                          Q3      225    109     97     12
3 months    ki0047075b-MAL-ED          PERU                           Q4      302     91     59     32
3 months    ki0047075b-MAL-ED          PERU                           Q1      302     64     41     23
3 months    ki0047075b-MAL-ED          PERU                           Q2      302     69     44     25
3 months    ki0047075b-MAL-ED          PERU                           Q3      302     78     57     21
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      314     95     70     25
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      314     58     47     11
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      314     92     70     22
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      314     69     45     24
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      217      4      4      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      217     30     19     11
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      217     34     25      9
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      217    149    103     46
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      362     22     13      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      362    100     69     31
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      362    106     64     42
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      362    134     91     43
3 months    ki1000108-IRC              INDIA                          Q4      410     11      9      2
3 months    ki1000108-IRC              INDIA                          Q1      410    182    124     58
3 months    ki1000108-IRC              INDIA                          Q2      410    104     64     40
3 months    ki1000108-IRC              INDIA                          Q3      410    113     83     30
3 months    ki1000109-EE               PAKISTAN                       Q4      376      4      2      2
3 months    ki1000109-EE               PAKISTAN                       Q1      376    328    118    210
3 months    ki1000109-EE               PAKISTAN                       Q2      376     33     13     20
3 months    ki1000109-EE               PAKISTAN                       Q3      376     11      4      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      629     77     62     15
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      629    257    197     60
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      629    193    150     43
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      629    102     80     22
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      700     12     11      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      700    276    222     54
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      700    269    217     52
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      700    143    120     23
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      758    254    224     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      758    186    156     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      758     56     46     10
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      758    262    211     51
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2383      5      5      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2383     70     60     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2383   2209   1981    228
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2383     99     94      5
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      590     74     66      8
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      590    415    339     76
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      590     46     42      4
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      590     55     49      6
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4    14011   8830   7049   1781
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1    14011    209    165     44
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2    14011    426    325    101
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3    14011   4546   3536   1010
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      507      0      0      0
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      507    373    264    109
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      507    117     92     25
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      507     17     13      4
3 months    ki1135781-COHORTS          INDIA                          Q4     5662   1928   1694    234
3 months    ki1135781-COHORTS          INDIA                          Q1     5662   1909   1436    473
3 months    ki1135781-COHORTS          INDIA                          Q2     5662    942    743    199
3 months    ki1135781-COHORTS          INDIA                          Q3     5662    883    722    161
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     3056    935    842     93
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     3056    638    521    117
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     3056    265    219     46
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     3056   1218   1032    186
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      200     57     46     11
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      200     40     20     20
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      200     25     18      7
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      200     78     50     28
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4      217     74     58     16
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1      217     47     39      8
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2      217     40     31      9
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3      217     56     49      7
6 months    ki0047075b-MAL-ED          INDIA                          Q4      210     60     43     17
6 months    ki0047075b-MAL-ED          INDIA                          Q1      210     33     26      7
6 months    ki0047075b-MAL-ED          INDIA                          Q2      210     51     31     20
6 months    ki0047075b-MAL-ED          INDIA                          Q3      210     66     41     25
6 months    ki0047075b-MAL-ED          NEPAL                          Q4      223     20     15      5
6 months    ki0047075b-MAL-ED          NEPAL                          Q1      223     30     24      6
6 months    ki0047075b-MAL-ED          NEPAL                          Q2      223     64     51     13
6 months    ki0047075b-MAL-ED          NEPAL                          Q3      223    109     95     14
6 months    ki0047075b-MAL-ED          PERU                           Q4      281     84     44     40
6 months    ki0047075b-MAL-ED          PERU                           Q1      281     61     34     27
6 months    ki0047075b-MAL-ED          PERU                           Q2      281     65     34     31
6 months    ki0047075b-MAL-ED          PERU                           Q3      281     71     45     26
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      271     79     48     31
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      271     56     36     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      271     77     51     26
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      271     59     32     27
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      208      3      3      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      208     30     16     14
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      208     33     22     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      208    142     85     57
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      367     22     10     12
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      367    103     50     53
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      367    107     49     58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      367    135     70     65
6 months    ki1000108-IRC              INDIA                          Q4      408     11      6      5
6 months    ki1000108-IRC              INDIA                          Q1      408    182    101     81
6 months    ki1000108-IRC              INDIA                          Q2      408    102     52     50
6 months    ki1000108-IRC              INDIA                          Q3      408    113     76     37
6 months    ki1000109-EE               PAKISTAN                       Q4      370      4      2      2
6 months    ki1000109-EE               PAKISTAN                       Q1      370    322     79    243
6 months    ki1000109-EE               PAKISTAN                       Q2      370     33     11     22
6 months    ki1000109-EE               PAKISTAN                       Q3      370     11      3      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4      105      2      2      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1      105     85     50     35
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2      105     13      7      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3      105      5      3      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      551     69     48     21
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      551    227    136     91
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      551    164    101     63
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      551     91     65     26
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      640     12     11      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      640    253    187     66
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      640    241    173     68
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      640    134    106     28
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      736    247    189     58
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      736    180    122     58
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      736     53     36     17
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      736    256    163     93
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2226      4      3      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2226     67     51     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2226   2064   1647    417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2226     91     80     11
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4      265    112     74     38
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1      265     47     32     15
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2      265     76     52     24
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3      265     30     23      7
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      564     70     57     13
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      564    397    269    128
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      564     45     38      7
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      564     52     38     14
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     9088   5736   4116   1620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     9088    139     90     49
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     9088    270    183     87
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     9088   2943   2021    922
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      139      0      0      0
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      139    106     66     40
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      139     30     22      8
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      139      3      2      1
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2806    834    685    149
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2806    612    425    187
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2806    246    176     70
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2806   1114    819    295
6 months    ki1148112-LCNI-5           MALAWI                         Q4      267      0      0      0
6 months    ki1148112-LCNI-5           MALAWI                         Q1      267    194    119     75
6 months    ki1148112-LCNI-5           MALAWI                         Q2      267     66     48     18
6 months    ki1148112-LCNI-5           MALAWI                         Q3      267      7      5      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      194     56     39     17
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      194     39     17     22
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      194     25     15     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      194     74     41     33
12 months   ki0047075b-MAL-ED          BRAZIL                         Q4      206     71     53     18
12 months   ki0047075b-MAL-ED          BRAZIL                         Q1      206     44     37      7
12 months   ki0047075b-MAL-ED          BRAZIL                         Q2      206     38     28     10
12 months   ki0047075b-MAL-ED          BRAZIL                         Q3      206     53     46      7
12 months   ki0047075b-MAL-ED          INDIA                          Q4      207     58     32     26
12 months   ki0047075b-MAL-ED          INDIA                          Q1      207     33     22     11
12 months   ki0047075b-MAL-ED          INDIA                          Q2      207     50     22     28
12 months   ki0047075b-MAL-ED          INDIA                          Q3      207     66     34     32
12 months   ki0047075b-MAL-ED          NEPAL                          Q4      220     20     14      6
12 months   ki0047075b-MAL-ED          NEPAL                          Q1      220     30     24      6
12 months   ki0047075b-MAL-ED          NEPAL                          Q2      220     63     50     13
12 months   ki0047075b-MAL-ED          NEPAL                          Q3      220    107     89     18
12 months   ki0047075b-MAL-ED          PERU                           Q4      269     81     35     46
12 months   ki0047075b-MAL-ED          PERU                           Q1      269     59     29     30
12 months   ki0047075b-MAL-ED          PERU                           Q2      269     61     29     32
12 months   ki0047075b-MAL-ED          PERU                           Q3      269     68     37     31
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      259     74     40     34
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      259     55     28     27
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      259     74     41     33
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      259     56     28     28
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      202      3      1      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      202     30      9     21
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      202     32     15     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      202    137     48     89
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      372     22      7     15
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      372    106     31     75
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      372    109     31     78
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      372    135     43     92
12 months   ki1000108-IRC              INDIA                          Q4      408     11      5      6
12 months   ki1000108-IRC              INDIA                          Q1      408    182     89     93
12 months   ki1000108-IRC              INDIA                          Q2      408    103     43     60
12 months   ki1000108-IRC              INDIA                          Q3      408    112     64     48
12 months   ki1000109-EE               PAKISTAN                       Q4      370      4      2      2
12 months   ki1000109-EE               PAKISTAN                       Q1      370    322     51    271
12 months   ki1000109-EE               PAKISTAN                       Q2      370     33      9     24
12 months   ki1000109-EE               PAKISTAN                       Q3      370     11      3      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       99      2      0      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       99     80     13     67
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       99     12      1     11
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       99      5      1      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      541     69     40     29
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      541    223     93    130
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      541    162     76     86
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      541     87     56     31
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      609     11     10      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      609    239    151     88
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      609    233    155     78
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      609    126     91     35
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      729    246    173     73
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      729    179    106     73
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      729     55     32     23
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      729    249    141    108
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1989      4      2      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1989     64     39     25
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1989   1843   1256    587
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1989     78     61     17
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4      266    111     61     50
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1      266     44     14     30
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2      266     77     33     44
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3      266     34     16     18
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      579     69     44     25
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      579    409    210    199
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      579     45     30     15
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      579     56     31     25
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4    10172   6425   4101   2324
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1    10172    158     92     66
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2    10172    312    186    126
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3    10172   3277   1956   1321
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      553      2      0      2
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      553    406    102    304
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      553    125     43     82
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      553     20      7     13
12 months   ki1135781-COHORTS          INDIA                          Q4     5484   1919   1464    455
12 months   ki1135781-COHORTS          INDIA                          Q1     5484   1799    821    978
12 months   ki1135781-COHORTS          INDIA                          Q2     5484    909    492    417
12 months   ki1135781-COHORTS          INDIA                          Q3     5484    857    553    304
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2762    824    564    260
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2762    596    272    324
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2762    239    122    117
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2762   1103    592    511
12 months   ki1148112-LCNI-5           MALAWI                         Q4      792      1      1      0
12 months   ki1148112-LCNI-5           MALAWI                         Q1      792    559    286    273
12 months   ki1148112-LCNI-5           MALAWI                         Q2      792    210    120     90
12 months   ki1148112-LCNI-5           MALAWI                         Q3      792     22     13      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      190     55     28     27
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      190     39     11     28
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      190     25     15     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      190     71     29     42
18 months   ki0047075b-MAL-ED          BRAZIL                         Q4      193     67     50     17
18 months   ki0047075b-MAL-ED          BRAZIL                         Q1      193     40     29     11
18 months   ki0047075b-MAL-ED          BRAZIL                         Q2      193     35     26      9
18 months   ki0047075b-MAL-ED          BRAZIL                         Q3      193     51     43      8
18 months   ki0047075b-MAL-ED          INDIA                          Q4      201     56     27     29
18 months   ki0047075b-MAL-ED          INDIA                          Q1      201     32     18     14
18 months   ki0047075b-MAL-ED          INDIA                          Q2      201     49     17     32
18 months   ki0047075b-MAL-ED          INDIA                          Q3      201     64     25     39
18 months   ki0047075b-MAL-ED          NEPAL                          Q4      216     20     14      6
18 months   ki0047075b-MAL-ED          NEPAL                          Q1      216     30     21      9
18 months   ki0047075b-MAL-ED          NEPAL                          Q2      216     62     39     23
18 months   ki0047075b-MAL-ED          NEPAL                          Q3      216    104     81     23
18 months   ki0047075b-MAL-ED          PERU                           Q4      243     73     24     49
18 months   ki0047075b-MAL-ED          PERU                           Q1      243     56     17     39
18 months   ki0047075b-MAL-ED          PERU                           Q2      243     52     16     36
18 months   ki0047075b-MAL-ED          PERU                           Q3      243     62     23     39
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      253     71     35     36
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      253     55     22     33
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      253     72     33     39
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      253     55     22     33
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      193      3      1      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      193     30      4     26
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      193     31      8     23
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      193    129     26    103
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      373     22      6     16
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      373    106     14     92
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      373    109     13     96
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      373    136     24    112
18 months   ki1000108-IRC              INDIA                          Q4      409     11      5      6
18 months   ki1000108-IRC              INDIA                          Q1      409    182     78    104
18 months   ki1000108-IRC              INDIA                          Q2      409    104     39     65
18 months   ki1000108-IRC              INDIA                          Q3      409    112     57     55
18 months   ki1000109-EE               PAKISTAN                       Q4      360      4      1      3
18 months   ki1000109-EE               PAKISTAN                       Q1      360    314     24    290
18 months   ki1000109-EE               PAKISTAN                       Q2      360     32      6     26
18 months   ki1000109-EE               PAKISTAN                       Q3      360     10      1      9
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       93      2      0      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       93     74      8     66
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       93     12      1     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       93      5      1      4
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      497     66     33     33
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      497    205     57    148
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      497    145     47     98
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      497     81     37     44
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      604     11     10      1
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      604    235    122    113
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      604    232    136     96
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      604    126     84     42
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715    243    163     80
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715    175     88     87
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     55     30     25
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715    242    117    125
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1449      4      2      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1449     46     25     21
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1449   1339    792    547
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1449     60     43     17
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4      185     80     36     44
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1      185     30      7     23
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2      185     49     15     34
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3      185     26     11     15
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      571     70     39     31
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      571    401    134    267
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      571     45     22     23
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      571     55     19     36
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7276   4467   2379   2088
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7276    125     56     69
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7276    243    112    131
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7276   2441   1155   1286
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      446      2      0      2
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      446    329     51    278
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      446     97     19     78
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      446     18      5     13
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2632    785    415    370
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2632    579    145    434
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2632    225     79    146
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2632   1043    370    673
18 months   ki1148112-LCNI-5           MALAWI                         Q4      670      1      1      0
18 months   ki1148112-LCNI-5           MALAWI                         Q1      670    467    201    266
18 months   ki1148112-LCNI-5           MALAWI                         Q2      670    182     90     92
18 months   ki1148112-LCNI-5           MALAWI                         Q3      670     20      8     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      178     53     23     30
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      178     37      9     28
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      178     23     12     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      178     65     25     40
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4      175     63     47     16
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1      175     35     26      9
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2      175     28     21      7
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3      175     49     41      8
24 months   ki0047075b-MAL-ED          INDIA                          Q4      200     56     26     30
24 months   ki0047075b-MAL-ED          INDIA                          Q1      200     31     14     17
24 months   ki0047075b-MAL-ED          INDIA                          Q2      200     49     15     34
24 months   ki0047075b-MAL-ED          INDIA                          Q3      200     64     23     41
24 months   ki0047075b-MAL-ED          NEPAL                          Q4      214     19     12      7
24 months   ki0047075b-MAL-ED          NEPAL                          Q1      214     30     20     10
24 months   ki0047075b-MAL-ED          NEPAL                          Q2      214     61     33     28
24 months   ki0047075b-MAL-ED          NEPAL                          Q3      214    104     77     27
24 months   ki0047075b-MAL-ED          PERU                           Q4      217     67     22     45
24 months   ki0047075b-MAL-ED          PERU                           Q1      217     49     11     38
24 months   ki0047075b-MAL-ED          PERU                           Q2      217     50     13     37
24 months   ki0047075b-MAL-ED          PERU                           Q3      217     51     15     36
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      242     68     31     37
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      242     54     18     36
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      242     68     26     42
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      242     52     18     34
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      188      3      1      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      188     29      2     27
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      188     30      6     24
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      188    126     15    111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      373     22      3     19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      373    106      5    101
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      373    109      6    103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      373    136     14    122
24 months   ki1000108-IRC              INDIA                          Q4      410     11      5      6
24 months   ki1000108-IRC              INDIA                          Q1      410    182     60    122
24 months   ki1000108-IRC              INDIA                          Q2      410    104     34     70
24 months   ki1000108-IRC              INDIA                          Q3      410    113     48     65
24 months   ki1000109-EE               PAKISTAN                       Q4      336      4      1      3
24 months   ki1000109-EE               PAKISTAN                       Q1      336    294     19    275
24 months   ki1000109-EE               PAKISTAN                       Q2      336     30      6     24
24 months   ki1000109-EE               PAKISTAN                       Q3      336      8      1      7
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4        9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1        9      7      1      6
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2        9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3        9      1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      470     61     26     35
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      470    192     34    158
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      470    137     28    109
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      470     80     27     53
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      582     11      9      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      582    227    104    123
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      582    222    112    110
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      582    122     77     45
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634    218    131     87
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634    152     64     88
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     45     24     21
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634    219     97    122
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      958      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      958     28     17     11
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      958    889    498    391
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      958     38     25     13
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      565     69     33     36
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      565    397    109    288
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      565     43     16     27
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      565     56     17     39
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1879   1075    334    741
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1879     38     11     27
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1879     79     19     60
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1879    687    169    518
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      471      2      0      2
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      471    346     37    309
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      471    104     10     94
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      471     19      1     18
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2562    770    300    470
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2562    558     71    487
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2562    221     43    178
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2562   1013    220    793
24 months   ki1148112-LCNI-5           MALAWI                         Q4      718      1      1      0
24 months   ki1148112-LCNI-5           MALAWI                         Q1      718    501    162    339
24 months   ki1148112-LCNI-5           MALAWI                         Q2      718    195     82    113
24 months   ki1148112-LCNI-5           MALAWI                         Q3      718     21      6     15


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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/60574242-3534-4f38-afe3-3eaf86d807ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 66 rows containing missing values (geom_errorbar).
```

![](/tmp/60574242-3534-4f38-afe3-3eaf86d807ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/60574242-3534-4f38-afe3-3eaf86d807ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60574242-3534-4f38-afe3-3eaf86d807ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.1803279   0.0836222   0.2770335
3 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.3809524   0.2337422   0.5281626
3 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.2500000   0.0892367   0.4107633
3 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.3253012   0.2242774   0.4263251
3 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.2025316   0.1137188   0.2913445
3 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.1063830   0.0180447   0.1947213
3 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2045455   0.0851020   0.3239889
3 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1290323   0.0454064   0.2126581
3 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                0.2063492   0.1061918   0.3065066
3 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                0.1714286   0.0462846   0.2965725
3 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                0.3269231   0.1991349   0.4547113
3 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                0.2857143   0.1796448   0.3917837
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.3516484   0.2533815   0.4499152
3 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.3593750   0.2416268   0.4771232
3 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.3623188   0.2487155   0.4759222
3 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.2692308   0.1706315   0.3678300
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2631579   0.1744680   0.3518478
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.1896552   0.0886034   0.2907070
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2391304   0.1518294   0.3264315
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.3478261   0.2352674   0.4603848
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.4090909   0.2033561   0.6148257
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.3100000   0.2192275   0.4007725
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.3962264   0.3029859   0.4894669
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.3208955   0.2417463   0.4000447
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.1948052   0.1062735   0.2833369
3 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.2334630   0.1817020   0.2852240
3 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.2227979   0.1640439   0.2815519
3 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.2156863   0.1358041   0.2955684
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1181102   0.0783939   0.1578265
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1612903   0.1083985   0.2141821
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1785714   0.0781950   0.2789478
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1946565   0.1466821   0.2426308
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2016988   0.1933289   0.2100686
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2105263   0.1552534   0.2657992
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.2370892   0.1967013   0.2774771
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.2221733   0.2100886   0.2342580
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1213693   0.1067915   0.1359470
3 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2477737   0.2284057   0.2671417
3 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.2112527   0.1851833   0.2373221
3 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1823330   0.1568631   0.2078028
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0994652   0.0802786   0.1186519
3 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.1833856   0.1533525   0.2134187
3 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.1735849   0.1279758   0.2191940
3 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.1527094   0.1325050   0.1729137
6 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.1929825   0.0902756   0.2956893
6 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.5000000   0.3446624   0.6553376
6 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.2800000   0.1035540   0.4564460
6 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.3589744   0.2522512   0.4656975
6 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.2162162   0.1222055   0.3102270
6 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.1702128   0.0625212   0.2779043
6 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2250000   0.0952931   0.3547069
6 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1250000   0.0381807   0.2118193
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                0.2833333   0.1690412   0.3976255
6 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                0.2121212   0.0723076   0.3519348
6 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                0.3921569   0.2578417   0.5264721
6 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                0.3787879   0.2614791   0.4960967
6 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.2500000   0.0598004   0.4401996
6 months    ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.2000000   0.0565425   0.3434575
6 months    ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.2031250   0.1043355   0.3019145
6 months    ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.1284404   0.0654883   0.1913925
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.4761905   0.3691964   0.5831845
6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.4426230   0.3177556   0.5674903
6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.4769231   0.3552842   0.5985620
6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.3661972   0.2539365   0.4784579
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3924051   0.2845323   0.5002778
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.3571429   0.2314140   0.4828717
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3376623   0.2318378   0.4434869
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.4576271   0.3302681   0.5849861
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.5454545   0.3371028   0.7538063
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.5145631   0.4179118   0.6112144
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.5420561   0.4475245   0.6365877
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.4814815   0.3970809   0.5658821
6 months    ki1000108-IRC              INDIA          Q4                   NA                0.4545455   0.1599320   0.7491589
6 months    ki1000108-IRC              INDIA          Q1                   NA                0.4450549   0.3727651   0.5173448
6 months    ki1000108-IRC              INDIA          Q2                   NA                0.4901961   0.3930629   0.5873292
6 months    ki1000108-IRC              INDIA          Q3                   NA                0.3274336   0.2408031   0.4140642
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3043478   0.1956805   0.4130152
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.4008811   0.3370703   0.4646918
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.3841463   0.3096375   0.4586552
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.2857143   0.1928126   0.3786160
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2348178   0.1819194   0.2877162
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3222222   0.2539053   0.3905392
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3207547   0.1950055   0.4465039
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3632813   0.3043265   0.4222360
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3392857   0.2514341   0.4271373
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.3191489   0.1856300   0.4526679
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.3157895   0.2110872   0.4204917
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.2333333   0.0816981   0.3849686
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1857143   0.0945351   0.2768934
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.3224181   0.2764000   0.3684362
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1555556   0.0495678   0.2615433
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.2692308   0.1485650   0.3898966
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2824268   0.2707760   0.2940775
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3525180   0.2730908   0.4319452
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3222222   0.2664765   0.3779679
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.3132858   0.2965273   0.3300443
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1786571   0.1526546   0.2046596
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.3055556   0.2690538   0.3420573
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2845528   0.2281595   0.3409462
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2648115   0.2388965   0.2907265
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.3035714   0.1828331   0.4243097
12 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.5641026   0.4080722   0.7201330
12 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.4000000   0.2074667   0.5925333
12 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.4459459   0.3324000   0.5594919
12 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.2535211   0.1520853   0.3549570
12 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.1590909   0.0507542   0.2674276
12 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2631579   0.1228092   0.4035066
12 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1320755   0.0407023   0.2234487
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4482759   0.3199780   0.5765737
12 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3333333   0.1721068   0.4945598
12 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.5600000   0.4220775   0.6979225
12 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4848485   0.3639841   0.6057128
12 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.3000000   0.0987054   0.5012946
12 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.2000000   0.0565380   0.3434620
12 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.2063492   0.1061918   0.3065066
12 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.1682243   0.0971859   0.2392627
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.5679012   0.4598220   0.6759805
12 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.5084746   0.3806723   0.6362768
12 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.5245902   0.3990346   0.6501458
12 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4558824   0.3372850   0.5744798
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.4594595   0.3456941   0.5732248
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4909091   0.3585344   0.6232838
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.4459459   0.3324738   0.5594181
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.5000000   0.3687909   0.6312091
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.6818182   0.4869265   0.8767098
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7075472   0.6208340   0.7942604
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7155963   0.6307914   0.8004012
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6814815   0.6027841   0.7601788
12 months   ki1000108-IRC              INDIA          Q4                   NA                0.5454545   0.2508411   0.8400680
12 months   ki1000108-IRC              INDIA          Q1                   NA                0.5109890   0.4382763   0.5837017
12 months   ki1000108-IRC              INDIA          Q2                   NA                0.5825243   0.4871711   0.6778774
12 months   ki1000108-IRC              INDIA          Q3                   NA                0.4285714   0.3368091   0.5203338
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.4202899   0.3037149   0.5368648
12 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.5829596   0.5181849   0.6477344
12 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5308642   0.4539452   0.6077831
12 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.3563218   0.2555949   0.4570488
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2967480   0.2396227   0.3538732
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4078212   0.3357800   0.4798624
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.4181818   0.2877327   0.5486309
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.4337349   0.3721367   0.4953332
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.4504505   0.3577181   0.5431828
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.6818182   0.5439349   0.8197015
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.5714286   0.4606864   0.6821708
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.5294118   0.3613210   0.6975025
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3623188   0.2488057   0.4758320
12 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4865526   0.4380712   0.5350339
12 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.3333333   0.1954820   0.4711847
12 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4464286   0.3161142   0.5767429
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.3617121   0.3499625   0.3734617
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.4177215   0.3408174   0.4946257
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.4038462   0.3493985   0.4582938
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.4031126   0.3863172   0.4199080
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2371027   0.2180721   0.2561332
12 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.5436354   0.5206166   0.5666541
12 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.4587459   0.4263498   0.4911420
12 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.3547258   0.3226914   0.3867601
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.3155340   0.2837973   0.3472707
12 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.5436242   0.5036284   0.5836200
12 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.4895397   0.4261524   0.5529271
12 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.4632820   0.4338489   0.4927150
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4909091   0.3584411   0.6233771
18 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.7179487   0.5763457   0.8595517
18 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.4000000   0.2074562   0.5925438
18 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.5915493   0.4769109   0.7061877
18 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.2537313   0.1492657   0.3581970
18 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.2750000   0.1362665   0.4137335
18 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2571429   0.1119711   0.4023146
18 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1568627   0.0567936   0.2569319
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.5178571   0.3866583   0.6490560
18 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4375000   0.2651916   0.6098084
18 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.6530612   0.5194520   0.7866705
18 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.6093750   0.4895456   0.7292044
18 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.3000000   0.0986969   0.5013031
18 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.3000000   0.1356367   0.4643633
18 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.3709677   0.2504463   0.4914892
18 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.2211538   0.1412050   0.3011027
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.6712329   0.5632480   0.7792177
18 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.6964286   0.5757533   0.8171038
18 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.6923077   0.5666035   0.8180119
18 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.6290323   0.5085419   0.7495226
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.5070423   0.3905208   0.6235637
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.6000000   0.4702724   0.7297276
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.5416667   0.4263483   0.6569851
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.6000000   0.4702724   0.7297276
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.7272727   0.5409213   0.9136241
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.8679245   0.8033843   0.9324647
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.8807339   0.8198085   0.9416594
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.8235294   0.7593734   0.8876854
18 months   ki1000108-IRC              INDIA          Q4                   NA                0.5454545   0.2508420   0.8400671
18 months   ki1000108-IRC              INDIA          Q1                   NA                0.5714286   0.4994445   0.6434127
18 months   ki1000108-IRC              INDIA          Q2                   NA                0.6250000   0.5318423   0.7181577
18 months   ki1000108-IRC              INDIA          Q3                   NA                0.4910714   0.3983732   0.5837697
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.5000000   0.3792510   0.6207490
18 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.7219512   0.6605576   0.7833448
18 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.6758621   0.5996023   0.7521218
18 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.5432099   0.4346211   0.6517987
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.3292181   0.2700917   0.3883445
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4971429   0.4230125   0.5712732
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.4545455   0.3228598   0.5862312
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.5165289   0.4535237   0.5795342
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.5500000   0.4406880   0.6593120
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.7666667   0.6149071   0.9184262
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.6938776   0.5644830   0.8232721
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.5769231   0.3865055   0.7673406
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.4428571   0.3263923   0.5593220
18 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.6658354   0.6196271   0.7120437
18 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.5111111   0.3649320   0.6572902
18 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.6545455   0.5287651   0.7803258
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.4674278   0.4527954   0.4820602
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.5520000   0.4648171   0.6391829
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.5390947   0.4764169   0.6017724
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.5268333   0.5070254   0.5466411
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4713376   0.4364114   0.5062638
18 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7495682   0.7142709   0.7848655
18 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6488889   0.5865087   0.7112691
18 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6452541   0.6162130   0.6742951
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.5660377   0.4322297   0.6998458
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.7567568   0.6181230   0.8953906
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.4782609   0.2735379   0.6829839
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.6153846   0.4967800   0.7339892
24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.2539683   0.1461752   0.3617613
24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.2571429   0.1119322   0.4023535
24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2500000   0.0891526   0.4108474
24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1632653   0.0594801   0.2670505
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.5357143   0.4047654   0.6666632
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.5483871   0.3727637   0.7240105
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.6938776   0.5645094   0.8232457
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.6406250   0.5227769   0.7584731
24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.3684211   0.1510136   0.5858285
24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.3333333   0.1642510   0.5024157
24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.4590164   0.3336716   0.5843612
24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.2596154   0.1751571   0.3440737
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.6716418   0.5589333   0.7843502
24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.7755102   0.6584134   0.8926070
24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.7400000   0.6181379   0.8618621
24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.7058824   0.5805415   0.8312232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.5441176   0.4254956   0.6627397
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.6666667   0.5406743   0.7926590
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.6176471   0.5019039   0.7333902
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.6538462   0.5242721   0.7834202
24 months   ki1000108-IRC              INDIA          Q4                   NA                0.5454545   0.2508429   0.8400662
24 months   ki1000108-IRC              INDIA          Q1                   NA                0.6703297   0.6019500   0.7387093
24 months   ki1000108-IRC              INDIA          Q2                   NA                0.6730769   0.5828125   0.7633414
24 months   ki1000108-IRC              INDIA          Q3                   NA                0.5752212   0.4839702   0.6664723
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.5737705   0.4495376   0.6980034
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.8229167   0.7688628   0.8769705
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.7956204   0.7280243   0.8632166
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.6625000   0.5587721   0.7662279
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.3990826   0.3340245   0.4641407
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.5789474   0.5003954   0.6574993
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.4666667   0.3207895   0.6125438
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.5570776   0.4912375   0.6229177
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.5217391   0.4037703   0.6397080
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.7254408   0.6815012   0.7693804
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.6279070   0.4833058   0.7725082
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.6964286   0.5758951   0.8169620
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.6893023   0.6616308   0.7169739
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.7105263   0.5662927   0.8547599
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.7594937   0.6652232   0.8537641
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.7540029   0.7217895   0.7862163
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.6103896   0.5759383   0.6448410
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.8727599   0.8451048   0.9004150
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.8054299   0.7532277   0.8576320
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.7828233   0.7574272   0.8082194


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.2850467   0.2748897   0.2952037
3 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.1637931   0.1582968   0.1692894
3 months    ki0047075b-MAL-ED          INDIA          NA                   NA                0.2545455   0.2469239   0.2621670
3 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.3344371   0.3300664   0.3388078
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.2611465   0.2553493   0.2669437
3 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.3453039   0.3412147   0.3493931
3 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.2225755   0.2216159   0.2235352
3 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1596306   0.1573456   0.1619156
3 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2095496   0.2093731   0.2097261
3 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1884493   0.1870681   0.1898305
3 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.1446335   0.1434919   0.1457751
6 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.3300000   0.3149264   0.3450736
6 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.1843318   0.1789922   0.1896714
6 months    ki0047075b-MAL-ED          INDIA          NA                   NA                0.3285714   0.3194869   0.3376560
6 months    ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1704036   0.1647395   0.1760677
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.4412811   0.4359353   0.4466269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3837638   0.3784833   0.3890444
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.5122616   0.5096002   0.5149230
6 months    ki1000108-IRC              INDIA          NA                   NA                0.4240196   0.4179517   0.4300876
6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3647913   0.3609267   0.3686559
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3070652   0.3031582   0.3109722
6 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.3169811   0.3131597   0.3208026
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2872340   0.2823028   0.2921653
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2946743   0.2943299   0.2950187
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2498218   0.2480173   0.2516263
12 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4226804   0.4097589   0.4356020
12 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.2038835   0.1960766   0.2116904
12 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4685990   0.4588138   0.4783843
12 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1954545   0.1905149   0.2003942
12 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.5167286   0.5117154   0.5217418
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.4710425   0.4683596   0.4737253
12 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.6989247   0.6973803   0.7004691
12 months   ki1000108-IRC              INDIA          NA                   NA                0.5073529   0.5018784   0.5128274
12 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5101664   0.5030350   0.5172977
12 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3799726   0.3755989   0.3843462
12 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.5338346   0.5238078   0.5438614
12 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4559585   0.4515808   0.4603363
12 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.3772120   0.3768160   0.3776079
12 months   ki1135781-COHORTS          INDIA          NA                   NA                0.3927790   0.3893387   0.3962193
12 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.4388125   0.4356111   0.4420138
18 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.5631579   0.5487361   0.5775797
18 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.2331606   0.2265984   0.2397228
18 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.5671642   0.5566825   0.5776459
18 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.2824074   0.2738178   0.2909970
18 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.6707819   0.6674592   0.6741046
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.5573123   0.5524184   0.5622061
18 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.8471850   0.8432450   0.8511250
18 months   ki1000108-IRC              INDIA          NA                   NA                0.5623472   0.5575603   0.5671340
18 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.6498994   0.6424438   0.6573550
18 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.4433566   0.4372384   0.4494748
18 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.6270270   0.6147120   0.6393420
18 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.6252189   0.6186800   0.6317578
18 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.4912040   0.4905096   0.4918983
18 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6166413   0.6127078   0.6205749
24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.6123596   0.5997726   0.6249465
24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.2285714   0.2225120   0.2346309
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.6100000   0.6010416   0.6189584
24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.3364486   0.3250192   0.3478780
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.7188940   0.7136342   0.7241538
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.6157025   0.6096041   0.6218008
24 months   ki1000108-IRC              INDIA          NA                   NA                0.6414634   0.6370434   0.6458835
24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.7553191   0.7471818   0.7634565
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.5015773   0.4954444   0.5077102
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.6902655   0.6846453   0.6958857
24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.7163385   0.7148970   0.7177800
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.7525371   0.7486982   0.7563760


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                2.1125541   1.0907873   4.091435
3 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                1.3863636   0.6001121   3.202742
3 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.8039430   0.9707053   3.352419
3 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                0.5252660   0.2053775   1.343401
3 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.0099432   0.4865719   2.096268
3 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.6370968   0.2913158   1.393307
3 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8307692   0.3457479   1.996187
3 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.5843195   0.8495513   2.954581
3 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.3846154   0.7515231   2.551032
3 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                1.0219727   0.6643832   1.572027
3 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                1.0303442   0.6769837   1.568146
3 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.7656250   0.4830056   1.213613
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.7206897   0.3836570   1.353797
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.9086957   0.5528879   1.493481
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.3217391   0.8283807   2.108927
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                0.7577778   0.4234556   1.356051
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                0.9685535   0.5558861   1.687568
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                0.7844113   0.4480019   1.373434
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.1984436   0.7227904   1.987114
3 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.1436960   0.6762669   1.934208
3 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.1071895   0.6160429   1.989908
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.3655914   0.8537599   2.184267
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.5119048   0.7853384   2.910664
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.6480916   1.0862236   2.500596
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0437661   0.8001387   1.361573
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1754619   0.9864236   1.400727
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1015107   1.0286710   1.179508
3 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.0414859   1.7689234   2.356046
3 months    ki1135781-COHORTS          INDIA          Q2                   Q4                1.7405774   1.4652272   2.067672
3 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.5022989   1.2495327   1.806197
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8437152   1.4315253   2.374590
3 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.7451815   1.2597387   2.417691
3 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5353038   1.2150885   1.939906
6 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                2.5909091   1.3990007   4.798289
6 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                1.4509091   0.6359441   3.310255
6 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.8601399   1.0110956   3.422150
6 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                0.7872340   0.3653434   1.696315
6 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.0406250   0.5054828   2.142309
6 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.5781250   0.2547712   1.311877
6 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.7486631   0.3456851   1.621408
6 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.3840830   0.8153495   2.349527
6 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.3368984   0.8039611   2.223114
6 months    ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          NEPAL          Q1                   Q4                0.8000000   0.2811798   2.276124
6 months    ki0047075b-MAL-ED          NEPAL          Q2                   Q4                0.8125000   0.3293592   2.004365
6 months    ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.5137615   0.2078364   1.269993
6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.9295082   0.6480738   1.333159
6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                1.0015385   0.7129339   1.406974
6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.7690141   0.5258560   1.124610
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.9101382   0.5822723   1.422619
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.8604943   0.5671493   1.305565
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1662110   0.7886584   1.724509
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                0.9433657   0.6163358   1.443919
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                0.9937695   0.6530146   1.512336
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                0.8827160   0.5798234   1.343836
6 months    ki1000108-IRC              INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA          Q1                   Q4                0.9791209   0.5019310   1.909979
6 months    ki1000108-IRC              INDIA          Q2                   Q4                1.0784314   0.5475755   2.123934
6 months    ki1000108-IRC              INDIA          Q3                   Q4                0.7203540   0.3576923   1.450716
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.3171806   0.8909823   1.947249
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.2621951   0.8407350   1.894933
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                0.9387755   0.5792053   1.521567
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.3722222   1.0071021   1.869715
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.3659727   0.8691067   2.146896
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.5470770   1.1720170   2.042161
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                0.9406495   0.5751119   1.538520
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.9307479   0.6111265   1.417532
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.6877193   0.3416650   1.384273
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.7360977   1.0411749   2.894840
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                0.8376068   0.3616718   1.939839
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4497041   0.7457165   2.818285
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.2481748   0.9926504   1.569475
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1409053   0.9550113   1.362984
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1092637   1.0368060   1.186785
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7102908   1.4167585   2.064639
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5927320   1.2455359   2.036710
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4822334   1.2437918   1.766386
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.8582202   1.1447287   3.016420
12 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                1.3176471   0.7057132   2.460197
12 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.4689984   0.9160673   2.355674
12 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                0.6275253   0.2848511   1.382434
12 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.0380117   0.5329020   2.021888
12 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.5209644   0.2342734   1.158492
12 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.7435897   0.4238913   1.304404
12 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.2492308   0.8563658   1.822326
12 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0815851   0.7399914   1.580865
12 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                0.6666667   0.2496533   1.780246
12 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                0.6878307   0.3004877   1.574477
12 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.5607477   0.2537795   1.239020
12 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                0.8953574   0.6532475   1.227199
12 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9237349   0.6803739   1.254143
12 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                0.8027494   0.5815589   1.108067
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.0684492   0.7409062   1.540794
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.9705882   0.6805215   1.384294
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.0882353   0.7586332   1.561039
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.0377358   0.7603588   1.416299
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.0495413   0.7702184   1.430162
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                0.9995062   0.7343418   1.360419
12 months   ki1000108-IRC              INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA          Q1                   Q4                0.9368132   0.5358901   1.637684
12 months   ki1000108-IRC              INDIA          Q2                   Q4                1.0679612   0.6073608   1.877864
12 months   ki1000108-IRC              INDIA          Q3                   Q4                0.7857143   0.4394738   1.404741
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.3870419   1.0287835   1.870058
12 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.2630907   0.9236966   1.727188
12 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                0.8478002   0.5705550   1.259765
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.3743017   1.0583111   1.784641
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.4092154   0.9767472   2.033165
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.4616273   1.1506519   1.856647
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.5136364   1.1342107   2.019991
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                1.2685714   0.9561475   1.683081
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                1.1752941   0.8050216   1.715875
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3428851   0.9666297   1.865596
12 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                0.9200000   0.5476009   1.545651
12 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.2321429   0.8029573   1.890731
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.1548454   0.9579295   1.392240
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1164852   0.9719069   1.282571
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1144572   1.0571079   1.174918
12 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.2928269   2.0939214   2.510627
12 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.9347985   1.7386275   2.153104
12 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.4960852   1.3258205   1.688216
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7228704   1.5210099   1.951521
12 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5514644   1.3168471   1.827883
12 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4682474   1.3035665   1.653733
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.4624881   1.0469702   2.042915
18 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.8148148   0.4692454   1.414874
18 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.2050078   0.8643869   1.679854
18 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                1.0838235   0.5651462   2.078530
18 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.0134454   0.5038974   2.038255
18 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.6182238   0.2893358   1.320959
18 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8448276   0.5289192   1.349419
18 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.2610837   0.9105828   1.746499
18 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.1767241   0.8538712   1.621649
18 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                1.0000000   0.4205170   2.378025
18 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                1.2365591   0.5867302   2.606102
18 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.7371795   0.3439979   1.579759
18 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.0375364   0.8190622   1.314286
18 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.0313972   0.8092277   1.314562
18 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                0.9371297   0.7297325   1.203471
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.1833333   0.8631265   1.622332
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.0682870   0.7809773   1.461294
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1833333   0.8631265   1.622332
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.1933962   0.9139293   1.558320
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.2110092   0.9287157   1.579109
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.1323529   0.8663066   1.480103
18 months   ki1000108-IRC              INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA          Q1                   Q4                1.0476190   0.6016384   1.824195
18 months   ki1000108-IRC              INDIA          Q2                   Q4                1.1458333   0.6543062   2.006605
18 months   ki1000108-IRC              INDIA          Q3                   Q4                0.9002976   0.5080431   1.595408
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.4439024   1.1177488   1.865226
18 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.3517241   1.0354374   1.764625
18 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.0864198   0.7940474   1.486445
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.5100714   1.1956944   1.907106
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.3806818   0.9818830   1.941456
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.5689566   1.2627706   1.949384
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.3939394   1.0529825   1.845298
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                1.2615955   0.9606365   1.656842
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                1.0489510   0.7135613   1.541981
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.5034993   1.1454613   1.973450
18 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.1541219   0.7825526   1.702119
18 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4780059   1.0671396   2.047062
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.1809310   1.0053047   1.387239
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1533217   1.0224901   1.300894
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1270901   1.0732755   1.183603
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.5903001   1.4566303   1.736236
18 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.3766967   1.2193394   1.554361
18 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.3689850   1.2552967   1.492970
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.3369369   0.9913494   1.802997
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.8449275   0.5181459   1.377802
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.0871795   0.8013815   1.474902
24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                1.0125000   0.4995712   2.052072
24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                0.9843750   0.4554250   2.127670
24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.6428571   0.2993361   1.380606
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.0236559   0.6842033   1.531521
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.2952381   0.9524370   1.761420
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.1958333   0.8806613   1.623800
24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                0.9047619   0.4155144   1.970074
24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                1.2459016   0.6502708   2.387115
24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.7046703   0.3592043   1.382390
24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.1546485   0.9213220   1.447065
24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.1017778   0.8709327   1.393809
24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.0509804   0.8231704   1.341836
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.2252252   0.9181486   1.635004
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1351351   0.8515246   1.513206
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.2016632   0.8950181   1.613369
24 months   ki1000108-IRC              INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA          Q1                   Q4                1.2289377   0.7092695   2.129357
24 months   ki1000108-IRC              INDIA          Q2                   Q4                1.2339744   0.7073136   2.152783
24 months   ki1000108-IRC              INDIA          Q3                   Q4                1.0545723   0.6006154   1.851639
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.4342262   1.1438057   1.798387
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.3866528   1.0988897   1.749771
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.1546429   0.8839031   1.508310
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.4506957   1.1734496   1.793446
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.1693487   0.8219290   1.663619
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.3958957   1.1413155   1.707262
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3904282   1.1002447   1.757146
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2034884   0.8715246   1.661897
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3348214   1.0040623   1.774540
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0307905   0.8381143   1.267762
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1018295   0.9670732   1.255364
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.0938639   1.0315801   1.159908
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.4298406   1.3402216   1.525452
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.3195340   1.2108647   1.437956
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.2824977   1.2016658   1.368767


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1047189    0.0074813   0.2019564
3 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0387385   -0.1277213   0.0502442
3 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0481962   -0.0522508   0.1486433
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0172113   -0.1155753   0.0811528
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0020114   -0.0908906   0.0868678
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0637870   -0.2695624   0.1419884
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0277703   -0.0607666   0.1163073
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0415204    0.0017384   0.0813024
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0078509   -0.0005208   0.0162226
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0670800    0.0524370   0.0817231
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0451683    0.0259477   0.0643889
6 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1370175    0.0332104   0.2408247
6 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0318844   -0.1260467   0.0622778
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0452381   -0.0694145   0.1598907
6 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0795964   -0.2698804   0.1106875
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0349093   -0.1420369   0.0722182
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0086412   -0.1166431   0.0993607
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0331930   -0.2415617   0.1751758
6 months    ki1000108-IRC              INDIA          Q4                   NA                -0.0305258   -0.3252018   0.2641501
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0604435   -0.0482926   0.1691795
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0722474    0.0192049   0.1252899
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0223046   -0.1102393   0.0656301
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1015198    0.0102074   0.1928321
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0122475    0.0005917   0.0239033
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0711647    0.0450997   0.0972298
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1191090   -0.0023188   0.2405367
12 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0496376   -0.1513735   0.0520982
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0203232   -0.1083473   0.1489936
12 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.1045455   -0.3059006   0.0968097
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0511726   -0.1593680   0.0570228
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0115830   -0.1022140   0.1253800
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0171065   -0.1777912   0.2120043
12 months   ki1000108-IRC              INDIA          Q4                   NA                -0.0381016   -0.3327659   0.2565627
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0898765   -0.0269164   0.2066694
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0832246    0.0259322   0.1405170
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0833841   -0.0098888   0.1766570
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0936397   -0.0199578   0.2072372
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0154999    0.0037436   0.0272562
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.1556763    0.1363373   0.1750154
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1232785    0.0913807   0.1551763
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0722488   -0.0610019   0.2054995
18 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0205707   -0.1252422   0.0841008
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0493070   -0.0823098   0.1809239
18 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0175926   -0.2190788   0.1838936
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0004510   -0.1084870   0.1075850
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0502700   -0.0663542   0.1668942
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1199123   -0.0664808   0.3063053
18 months   ki1000108-IRC              INDIA          Q4                   NA                 0.0168926   -0.2777588   0.3115441
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1498994    0.0289205   0.2708783
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1141385    0.0546964   0.1735806
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0770270   -0.0329764   0.1870305
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1823618    0.0657135   0.2990100
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0237762    0.0091273   0.0384251
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1453038    0.1101568   0.1804507
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0463218   -0.0880769   0.1807206
24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0253968   -0.1333600   0.0825664
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0742857   -0.0569692   0.2055407
24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0319725   -0.2496801   0.1857352
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0472522   -0.0655789   0.1600833
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0715848   -0.0471939   0.1903636
24 months   ki1000108-IRC              INDIA          Q4                   NA                 0.0960089   -0.1986360   0.3906537
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1815487    0.0570496   0.3060478
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1024947    0.0371482   0.1678413
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1685264    0.0504237   0.2866290
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0270362   -0.0006729   0.0547452
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1421475    0.1074829   0.1768120


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.3673744   -0.0828352   0.6304006
3 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.2365090   -0.9195437   0.2034802
3 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1893424   -0.3183639   0.5015293
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0514634   -0.3908774   0.2051239
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0077022   -0.4125898   0.2811334
3 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.1847273   -0.9592450   0.2836125
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1247681   -0.3788047   0.4444239
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2601028   -0.0359565   0.4715533
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0374655   -0.0033255   0.0765982
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.3559579    0.2736019   0.4289767
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3122946    0.1658443   0.4330330
6 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.4152047    0.0023257   0.6572172
6 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.1729730   -0.8135842   0.2413555
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1376812   -0.2920115   0.4244681
6 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.4671053   -2.1418618   0.3149292
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0791091   -0.3514115   0.1383258
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0225170   -0.3465058   0.2235153
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0647969   -0.5601745   0.2732912
6 months    ki1000108-IRC              INDIA          Q4                   NA                -0.0719916   -1.0499713   0.4394234
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1656933   -0.1925012   0.4162960
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2352836    0.0417215   0.3897482
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0703656   -0.3870953   0.1740419
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3534392   -0.0567273   0.6044004
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0415629    0.0011818   0.0803114
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2848620    0.1726740   0.3818369
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.2817944   -0.0702581   0.5180422
12 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.2434608   -0.8586205   0.1680956
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0433701   -0.2745905   0.2820119
12 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.5348837   -2.0039024   0.2157308
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0990319   -0.3297491   0.0916549
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0245902   -0.2495392   0.2385799
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0244755   -0.2983180   0.2670147
12 months   ki1000108-IRC              INDIA          Q4                   NA                -0.0750988   -0.8453058   0.3736336
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1761710   -0.0875503   0.3759422
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2190279    0.0529163   0.3560047
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.1561985   -0.0375716   0.3137813
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2053689   -0.0871570   0.4191837
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0410907    0.0094139   0.0717544
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.3963459    0.3455856   0.4431689
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2809366    0.2046400   0.3499142
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1282923   -0.1431110   0.3352576
18 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0882255   -0.6441552   0.2797305
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0869361   -0.1771229   0.2917598
18 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0622951   -1.0795072   0.4573374
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0006723   -0.1754179   0.1480944
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0902008   -0.1450434   0.2771151
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1415420   -0.1092209   0.3356146
18 months   ki1000108-IRC              INDIA          Q4                   NA                 0.0300395   -0.6647753   0.4348647
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2306502    0.0202317   0.3958784
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2574418    0.1108846   0.3798413
18 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.1228448   -0.0710567   0.2816429
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2916767    0.0784162   0.4555873
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0484038    0.0181124   0.0777607
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2356374    0.1766211   0.2904237
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0756448   -0.1719011   0.2709005
24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.1111111   -0.6999904   0.2737795
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1217799   -0.1218967   0.3125297
24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0950292   -0.9775605   0.3936524
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0657290   -0.1051499   0.2101866
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1162653   -0.0992572   0.2895320
24 months   ki1000108-IRC              INDIA          Q4                   NA                 0.1496716   -0.4594107   0.5045546
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2403602    0.0564660   0.3884135
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2043448    0.0630378   0.3243408
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2441472    0.0522410   0.3971953
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0377421   -0.0017233   0.0756528
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1888910    0.1415966   0.2335796
