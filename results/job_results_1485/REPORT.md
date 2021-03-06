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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A                n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ----------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         254     51     40     11
3 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          254     55     35     20
3 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      254     89     60     29
3 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      254     59     47     12
3 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         221    144    122     22
3 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          221     14     10      4
3 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      221     19     16      3
3 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      221     44     39      5
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5         242     44     37      7
3 months    ki0047075b-MAL-ED          INDIA                          <42.5          242     47     32     15
3 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      242     76     53     23
3 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      242     75     55     20
3 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         238     87     73     14
3 months    ki0047075b-MAL-ED          NEPAL                          <42.5          238      2      2      0
3 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      238     50     36     14
3 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      238     99     90      9
3 months    ki0047075b-MAL-ED          PERU                           >=57.5         290    104     76     28
3 months    ki0047075b-MAL-ED          PERU                           <42.5          290     14      7      7
3 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      290     57     33     24
3 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      290    115     74     41
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         270    194    147     47
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          270      3      0      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      270     16     11      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      270     57     40     17
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         256    103     79     24
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          256      9      3      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      256     69     43     26
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      256     75     50     25
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5         467     32     28      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5          467    102     61     41
3 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)      467    212    136     76
3 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)      467    121     87     34
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         629     86     74     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          629    174    117     57
3 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      629    217    175     42
3 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      629    152    123     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         669    120    110     10
3 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          669    177    131     46
3 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      669    202    164     38
3 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      669    170    135     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         755    197    179     18
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          755    104     79     25
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      755    235    192     43
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      755    219    184     35
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        2349   1480   1362    118
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         2349     27     20      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     2349    212    178     34
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     2349    630    551     79
3 months    ki1119695-PROBIT           BELARUS                        >=57.5        6711   4995   4676    319
3 months    ki1119695-PROBIT           BELARUS                        <42.5         6711     14     10      4
3 months    ki1119695-PROBIT           BELARUS                        [42.5-50)     6711    266    237     29
3 months    ki1119695-PROBIT           BELARUS                        [50-57.5)     6711   1436   1300    136
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5       11171   6055   4943   1112
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5        11171    151     87     64
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)    11171   1410    989    421
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)    11171   3555   2628    927
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         246     49     38     11
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          246     55     31     24
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      246     86     48     38
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      246     56     45     11
6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         216    141    114     27
6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          216     13      9      4
6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      216     19     16      3
6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      216     43     38      5
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5         239     43     32     11
6 months    ki0047075b-MAL-ED          INDIA                          <42.5          239     46     25     21
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      239     75     50     25
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      239     75     49     26
6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         238     87     73     14
6 months    ki0047075b-MAL-ED          NEPAL                          <42.5          238      2      2      0
6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      238     50     34     16
6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      238     99     88     11
6 months    ki0047075b-MAL-ED          PERU                           >=57.5         281    102     64     38
6 months    ki0047075b-MAL-ED          PERU                           <42.5          281     13      6      7
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      281     56     28     28
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      281    110     58     52
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         263    189    124     65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          263      3      0      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      263     16      7      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      263     55     31     24
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         253    102     72     30
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          253      8      0      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      253     68     39     29
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      253     75     38     37
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5         366     26     18      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5          366     79     36     43
6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)      366    168     94     74
6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)      366     93     61     32
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         551     73     53     20
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          551    150     68     82
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      551    192    132     60
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      551    136     97     39
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         639    117    104     13
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          639    163    105     58
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      639    196    145     51
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      639    163    123     40
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         736    192    154     38
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          736    103     60     43
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      736    230    152     78
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      736    211    144     67
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        2194   1396   1167    229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         2194     26     18      8
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     2194    196    130     66
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     2194    576    442    134
6 months    ki1119695-PROBIT           BELARUS                        >=57.5        6517   4850   4398    452
6 months    ki1119695-PROBIT           BELARUS                        <42.5         6517     14      9      5
6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)     6517    259    216     43
6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)     6517   1394   1227    167
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        8477   4641   3530   1111
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         8477    101     52     49
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     8477   1040    608    432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     8477   2695   1763    932
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5         271     35     26      9
6 months    ki1148112-LCNI-5           MALAWI                         <42.5          271     27     10     17
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)      271    101     63     38
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)      271    108     75     33
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         239     47     31     16
12 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          239     54     25     29
12 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      239     83     41     42
12 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      239     55     39     16
12 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         206    136    109     27
12 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          206     11      6      5
12 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      206     18     15      3
12 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      206     41     35      6
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5         234     42     26     16
12 months   ki0047075b-MAL-ED          INDIA                          <42.5          234     45     17     28
12 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      234     73     39     34
12 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      234     74     41     33
12 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         235     86     70     16
12 months   ki0047075b-MAL-ED          NEPAL                          <42.5          235      2      2      0
12 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      235     49     32     17
12 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      235     98     84     14
12 months   ki0047075b-MAL-ED          PERU                           >=57.5         269    100     54     46
12 months   ki0047075b-MAL-ED          PERU                           <42.5          269     13      4      9
12 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      269     52     22     30
12 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      269    104     49     55
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         254    182    105     77
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          254      3      0      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      254     16      6     10
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      254     53     23     30
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         245    100     40     60
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          245      8      0      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      245     64     20     44
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      245     73     24     49
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5         424     32     21     11
12 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5          424     90     30     60
12 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)      424    197     74    123
12 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)      424    105     50     55
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         541     75     50     25
12 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          541    151     48    103
12 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      541    184     94     90
12 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      541    131     73     58
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         608    113     98     15
12 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          608    153     83     70
12 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      608    183    115     68
12 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      608    159    111     48
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         729    193    142     51
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          729    101     47     54
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      729    229    133     96
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      729    206    130     76
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1957   1250    910    340
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1957     22     11     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1957    166     88     78
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1957    519    328    191
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5         778    217    191     26
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5          778     22     16      6
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)      778    199    141     58
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)      778    340    270     70
12 months   ki1119695-PROBIT           BELARUS                        >=57.5        6687   4980   4329    651
12 months   ki1119695-PROBIT           BELARUS                        <42.5         6687     14      9      5
12 months   ki1119695-PROBIT           BELARUS                        [42.5-50)     6687    265    202     63
12 months   ki1119695-PROBIT           BELARUS                        [50-57.5)     6687   1428   1204    224
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        9378   5070   3456   1614
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         9378    122     43     79
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     9378   1200    598    602
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     9378   2986   1686   1300
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5         813    124     83     41
12 months   ki1148112-LCNI-5           MALAWI                         <42.5          813     70     19     51
12 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      813    325    159    166
12 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      813    294    167    127
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         231     44     28     16
18 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          231     50     12     38
18 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      231     82     27     55
18 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      231     55     33     22
18 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         193    126     97     29
18 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          193     11      6      5
18 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      193     17     14      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      193     39     32      7
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5         228     42     23     19
18 months   ki0047075b-MAL-ED          INDIA                          <42.5          228     44     13     31
18 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      228     70     30     40
18 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      228     72     30     42
18 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         231     85     65     20
18 months   ki0047075b-MAL-ED          NEPAL                          <42.5          231      2      1      1
18 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      231     48     24     24
18 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      231     96     73     23
18 months   ki0047075b-MAL-ED          PERU                           >=57.5         243     90     35     55
18 months   ki0047075b-MAL-ED          PERU                           <42.5          243     13      3     10
18 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      243     49     16     33
18 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      243     91     26     65
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         249    177     91     86
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          249      3      0      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      249     16      5     11
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      249     53     15     38
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         233     95     20     75
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          233      8      0      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      233     62     10     52
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      233     68     13     55
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5         415     31     16     15
18 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5          415     87     13     74
18 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)      415    193     50    143
18 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)      415    104     46     58
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         497     68     40     28
18 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          497    139     24    115
18 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      497    168     60    108
18 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      497    122     50     72
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         603    113     90     23
18 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          603    153     65     88
18 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      603    180     98     82
18 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      603    157     99     58
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         715    188    127     61
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          715     99     41     58
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      715    226    113    113
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      715    202    117     85
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1426    901    575    326
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1426     16      8      8
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1426    124     50     74
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1426    385    214    171
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5         121     37     27     10
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5          121      4      2      2
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)      121     30     17     13
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)      121     50     29     21
18 months   ki1119695-PROBIT           BELARUS                        >=57.5        6367   4754   4073    681
18 months   ki1119695-PROBIT           BELARUS                        <42.5         6367     14      9      5
18 months   ki1119695-PROBIT           BELARUS                        [42.5-50)     6367    247    188     59
18 months   ki1119695-PROBIT           BELARUS                        [50-57.5)     6367   1352   1120    232
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        6749   3478   1991   1487
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         6749     96     22     74
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     6749    937    366    571
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     6749   2238   1036   1202
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5         674    112     67     45
18 months   ki1148112-LCNI-5           MALAWI                         <42.5          674     53     10     43
18 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      674    262    108    154
18 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      674    247    116    131
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         219     43     25     18
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          219     48      8     40
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      219     77     24     53
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      219     51     26     25
24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         175    112     87     25
24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          175      9      4      5
24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      175     17     14      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      175     37     31      6
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5         227     41     21     20
24 months   ki0047075b-MAL-ED          INDIA                          <42.5          227     44     10     34
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      227     70     28     42
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      227     72     27     45
24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         229     84     62     22
24 months   ki0047075b-MAL-ED          NEPAL                          <42.5          229      2      1      1
24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      229     48     19     29
24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      229     95     67     28
24 months   ki0047075b-MAL-ED          PERU                           >=57.5         218     81     27     54
24 months   ki0047075b-MAL-ED          PERU                           <42.5          218     13      3     10
24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      218     40     10     30
24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      218     84     21     63
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         238    170     74     96
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          238      3      0      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      238     16      5     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      238     49     13     36
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         228     90     13     77
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          228      8      0      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      228     62      5     57
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      228     68      9     59
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5          42      1      1      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5           42      7      1      6
24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)       42     22      5     17
24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)       42     12      6      6
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         470     64     31     33
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          470    130      8    122
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      470    161     40    121
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      470    115     36     79
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         581    110     82     28
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          581    148     53     95
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      581    173     78     95
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      581    150     89     61
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         634    170    104     66
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          634     92     33     59
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      634    202     89    113
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      634    170     90     80
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5         947    609    380    229
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5          947      7      3      4
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)      947     86     31     55
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)      947    245    122    123
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5         538    147    110     37
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5          538     14      6      8
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)      538    135     68     67
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)      538    242    131    111
24 months   ki1119695-PROBIT           BELARUS                        >=57.5        2066   1494   1201    293
24 months   ki1119695-PROBIT           BELARUS                        <42.5         2066      5      4      1
24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)     2066     89     59     30
24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)     2066    478    377    101
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        1744    836    271    565
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         1744     25      5     20
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     1744    298     63    235
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     1744    585    138    447
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5         724    117     56     61
24 months   ki1148112-LCNI-5           MALAWI                         <42.5          724     59     11     48
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      724    283     86    197
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      724    265     99    166


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 32 rows containing missing values (geom_errorbar).
```

![](/tmp/b81dbdb1-85a7-4078-b89e-5d3b0dd1499f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 72 rows containing missing values (geom_errorbar).
```

![](/tmp/b81dbdb1-85a7-4078-b89e-5d3b0dd1499f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/b81dbdb1-85a7-4078-b89e-5d3b0dd1499f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/b81dbdb1-85a7-4078-b89e-5d3b0dd1499f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2156863   0.1025828   0.3287897
3 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.3636364   0.2362539   0.4910188
3 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.3258427   0.2282776   0.4234078
3 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.2033898   0.1004778   0.3063019
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1590909   0.0507935   0.2673883
3 months    ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.3191489   0.1856059   0.4526919
3 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.3026316   0.1991344   0.4061288
3 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.2666667   0.1663780   0.3669553
3 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.2692308   0.1838355   0.3546261
3 months    ki0047075b-MAL-ED          PERU                           <42.5                NA                0.5000000   0.2376361   0.7623639
3 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                0.4210526   0.2926575   0.5494477
3 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                0.3565217   0.2688299   0.4442136
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.1395349   0.0662436   0.2128262
3 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.3275862   0.2577951   0.3973773
3 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.1935484   0.1409409   0.2461559
3 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.1907895   0.1282751   0.2533038
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.0833333   0.0338456   0.1328210
3 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.2598870   0.1952282   0.3245458
3 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.1881188   0.1341852   0.2420524
3 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.2058824   0.1450548   0.2667099
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0913706   0.0511082   0.1316329
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.2403846   0.1582040   0.3225652
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.1829787   0.1335113   0.2324461
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.1598174   0.1112536   0.2083812
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0797297   0.0659266   0.0935329
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.2592593   0.0939265   0.4245920
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.1603774   0.1109706   0.2097841
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.1253968   0.0995314   0.1512622
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1836499   0.1738967   0.1934030
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.4238411   0.3450183   0.5026638
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.2985816   0.2746937   0.3224695
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.2607595   0.2463264   0.2751926
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2244898   0.1074249   0.3415547
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.4363636   0.3050303   0.5676970
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.4418605   0.3366891   0.5470318
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.1964286   0.0921601   0.3006971
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2558140   0.1251285   0.3864994
6 months    ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.4565217   0.3122765   0.6007670
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.3333333   0.2264225   0.4402442
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.3466667   0.2387344   0.4545990
6 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.3725490   0.2785542   0.4665438
6 months    ki0047075b-MAL-ED          PERU                           <42.5                NA                0.5384615   0.2669853   0.8099378
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                0.5000000   0.3688108   0.6311892
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                0.4727273   0.3792623   0.5661922
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3076923          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.5443038          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.4404762          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.3440860          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2739726   0.1715700   0.3763753
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.5466667   0.4669284   0.6264050
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.3125000   0.2468774   0.3781226
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.2867647   0.2106879   0.3628415
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1111111   0.0541212   0.1681010
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.3558282   0.2822727   0.4293838
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.2602041   0.1987327   0.3216755
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.2453988   0.1792854   0.3115121
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1979167   0.1415213   0.2543121
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.4174757   0.3221748   0.5127767
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.3391304   0.2779066   0.4003543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.3175355   0.2546808   0.3803903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1640401   0.1446101   0.1834701
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.3076923   0.1302455   0.4851392
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.3367347   0.2705578   0.4029116
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.2326389   0.1981264   0.2671514
6 months    ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0931959          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        <42.5                NA                0.3571429          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                0.1660232          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                0.1197991          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.2393881   0.2271108   0.2516653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.4851485   0.3876739   0.5826231
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.4153846   0.3854332   0.4453360
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.3458256   0.3278671   0.3637841
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2571429   0.1120798   0.4022059
6 months    ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.6296296   0.4471436   0.8121157
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.3762376   0.2815854   0.4708899
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.3055556   0.2185188   0.3925923
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3404255   0.2046715   0.4761795
12 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.5370370   0.4037656   0.6703084
12 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.5060241   0.3982392   0.6138090
12 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.2909091   0.1706254   0.4111928
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.3809524   0.2337717   0.5281331
12 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.6222222   0.4802633   0.7641812
12 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.4657534   0.3510793   0.5804276
12 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.4459459   0.3324503   0.5594416
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3437500          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.6666667          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.6243655          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.5238095          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3333333   0.2265477   0.4401190
12 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.6821192   0.6077790   0.7564594
12 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.4891304   0.4168354   0.5614254
12 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.4427481   0.3576111   0.5278851
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1327434   0.0701330   0.1953538
12 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.4575163   0.3785110   0.5365217
12 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.3715847   0.3015147   0.4416547
12 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.3018868   0.2304714   0.3733022
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2642487   0.2019987   0.3264987
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.5346535   0.4373093   0.6319976
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.4192140   0.3552619   0.4831660
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.3689320   0.3029959   0.4348682
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.2720000   0.2473252   0.2966748
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.5000000   0.2910137   0.7089863
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.4698795   0.3939369   0.5458221
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.3680154   0.3265141   0.4095167
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.1198157          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.2727273          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.2914573          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.2058824          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.1307229          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        <42.5                NA                0.3571429          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                0.2377358          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                0.1568627          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.3183432   0.3055200   0.3311664
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.6475410   0.5627637   0.7323182
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.5016667   0.4733757   0.5299577
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.4353650   0.4175807   0.4531493
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.3306452   0.2477911   0.4134992
12 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.7285714   0.6243324   0.8328104
12 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.5107692   0.4563888   0.5651497
12 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.4319728   0.3753157   0.4886299
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3636364   0.2211904   0.5060823
18 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.7600000   0.6413637   0.8786363
18 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.6707317   0.5687945   0.7726689
18 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.4000000   0.2702479   0.5297521
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.4523810   0.3015226   0.6032393
18 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.7045455   0.5694390   0.8396519
18 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.5714286   0.4552446   0.6876125
18 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.5833333   0.4692061   0.6974605
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.4838710          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.8505747          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.7409326          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.5576923          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.4117647   0.2946717   0.5288577
18 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.8273381   0.7644429   0.8902334
18 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.6428571   0.5703286   0.7153857
18 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.5901639   0.5028071   0.6775208
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.2035398   0.1292420   0.2778376
18 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.5751634   0.4967718   0.6535550
18 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.4555556   0.3827407   0.5283704
18 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.3694268   0.2938670   0.4449865
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.3244681   0.2574978   0.3914383
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.5858586   0.4887617   0.6829554
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.5000000   0.4347669   0.5652331
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.4207921   0.3526638   0.4889203
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.3618202   0.3304328   0.3932076
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.5000000   0.2549186   0.7450814
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.5967742   0.5104030   0.6831454
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.4441558   0.3945064   0.4938053
18 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.1432478          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        <42.5                NA                0.3571429          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                0.2388664          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                0.1715976          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.4275446   0.4111017   0.4439874
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.7708333   0.6867518   0.8549149
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.6093917   0.5781503   0.6406330
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.5370867   0.5164271   0.5577463
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.4017857   0.3109227   0.4926487
18 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.8113208   0.7059085   0.9167330
18 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.5877863   0.5281390   0.6474336
18 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.5303644   0.4680785   0.5926503
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.4186047   0.2708145   0.5663948
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.8333333   0.7276625   0.9390041
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.6883117   0.5846187   0.7920047
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.4901961   0.3526832   0.6277089
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.4878049   0.3344648   0.6411449
24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.7727273   0.6486286   0.8968260
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.6000000   0.4849826   0.7150174
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.6250000   0.5129282   0.7370718
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.5156250   0.3930566   0.6381934
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.9384615   0.8971073   0.9798158
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.7515528   0.6847346   0.8183709
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.6869565   0.6021111   0.7718020
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.2545455   0.1730714   0.3360195
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.6418919   0.5645830   0.7192008
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.5491329   0.4749230   0.6233429
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.4066667   0.3279901   0.4853432
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.3882353   0.3149181   0.4615525
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.6413043   0.5432217   0.7393870
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.5594059   0.4908890   0.6279229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.4705882   0.3954980   0.5456785
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.2517007          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.5714286          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.4962963          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.4586777          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.6758373   0.6440999   0.7075748
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.8000000   0.6431579   0.9568421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.7885906   0.7422190   0.8349622
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.7641026   0.7296888   0.7985163
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.5213675   0.4307883   0.6119467
24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.8135593   0.7141134   0.9130053
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.6961131   0.6424901   0.7497360
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.6264151   0.5681309   0.6846993


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2834646   0.2279309   0.3389982
3 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2685950   0.2126364   0.3245537
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3448276   0.2900279   0.3996273
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2225755   0.1900416   0.2551094
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1928251   0.1629076   0.2227426
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1602649   0.1340799   0.1864499
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1013197   0.0891144   0.1135250
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2259422   0.2181867   0.2336976
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3414634   0.2820852   0.4008416
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3472803   0.2867932   0.4077675
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4448399   0.3866322   0.5030475
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4289617          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3647913   0.3245616   0.4050210
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2535211   0.2197649   0.2872773
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.2737175   0.3404129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991796   0.1824641   0.2158951
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1023477          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2977468   0.2880121   0.3074816
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4309623   0.3680480   0.4938767
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4743590   0.4102427   0.5384753
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5872642          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.4680034   0.5523294
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3305921   0.2931685   0.3680157
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3447141   0.4152311
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3168114   0.2961940   0.3374289
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2056555          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1410199          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3833440   0.3735032   0.3931848
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4735547   0.4392122   0.5078972
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5670996   0.5030660   0.6311332
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5789474   0.5147196   0.6431751
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6987952          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6498994   0.6079209   0.6918779
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4162521   0.3768752   0.4556289
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4060309   0.3805331   0.4315286
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1534475          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4939991   0.4820702   0.5059280
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5534125   0.5158531   0.5909718
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6210046   0.5566048   0.6854043
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6211454   0.5579003   0.6843905
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7553191   0.7164122   0.7942261
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4802065   0.4395469   0.5208662
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.4144981          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7264908   0.7055641   0.7474175
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6519337   0.6172111   0.6866563


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.6859504   0.8973574   3.167555
3 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.5107252   0.8259155   2.763347
3 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            0.9429892   0.4550262   1.954236
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            2.0060790   0.9022487   4.460359
3 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.9022556   0.8880170   4.074896
3 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.6761905   0.7701404   3.648185
3 months    ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            1.8571429   1.0059138   3.428703
3 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            1.5639098   1.0072238   2.428272
3 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            1.3242236   0.8864322   1.978232
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.3477011   1.3319182   4.138167
3 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.3870968   0.7678193   2.505847
3 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.3673246   0.7362252   2.539408
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            3.1186441   1.6380964   5.937343
3 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.2574257   1.1674102   4.365193
3 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            2.4705882   1.2727356   4.795816
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.6308758   1.5062155   4.595297
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            2.0026003   1.1941998   3.358239
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.7491120   1.0241293   2.987311
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            3.2517263   1.6793253   6.296412
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            2.0115126   1.4127082   2.864132
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.5727737   1.2014728   2.058821
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.3078756   1.9020281   2.800321
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.6258196   1.4769592   1.789683
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4198730   1.3150306   1.533074
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.9438017   1.0645504   3.549259
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.9682875   1.1095345   3.491695
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            0.8750000   0.4157614   1.841501
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.7845850   0.9787376   3.253930
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.3030303   0.7128345   2.381883
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.3551515   0.7450189   2.464952
6 months    ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            1.4453441   0.8224818   2.539898
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            1.3421053   0.9326137   1.931396
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            1.2688995   0.9209109   1.748384
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000          NA         NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            1.7689873          NA         NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.4315476          NA         NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.1182796          NA         NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            1.9953333   1.3358775   2.980330
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.1406250   0.7429376   1.751191
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.0466912   0.6618504   1.655302
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            3.2024540   1.8421235   5.567331
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.3418367   1.3314057   4.119104
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            2.2085890   1.2373766   3.942102
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.1093510   1.4641438   3.038883
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.7135011   1.2228909   2.400939
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.6043901   1.1340451   2.269811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            1.8757138   1.0410700   3.379506
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            2.0527582   1.6318667   2.582206
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.4181829   1.1729708   1.714657
6 months    ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5            1.0000000          NA         NA
6 months    ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            3.8321745          NA         NA
6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            1.7814433          NA         NA
6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            1.2854554          NA         NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.0266195   1.6470896   2.493603
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.7351935   1.5882535   1.895728
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4446234   1.3429425   1.554003
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            2.4485597   1.2985768   4.616935
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.4631463   0.7889139   2.713600
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1882716   0.6316186   2.235510
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.5775463   0.9862775   2.523278
12 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.4864458   0.9458119   2.336110
12 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            0.8545455   0.4811246   1.517794
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.6333333   1.0428307   2.558208
12 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.2226027   0.7732511   1.933081
12 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.1706081   0.7370350   1.859238
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000          NA         NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            1.9393939          NA         NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.8163359          NA         NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.5238095          NA         NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.0463576   1.4588871   2.870393
12 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.4673913   1.0311523   2.088185
12 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.3282443   0.9141328   1.929952
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            3.4466231   2.0857171   5.695504
12 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.7992714   1.6843769   4.652118
12 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            2.2742138   1.3417430   3.854724
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.0232964   1.5022984   2.724977
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.5864372   1.1982186   2.100437
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.3961546   1.0387575   1.876518
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            1.8382353   1.1985378   2.819360
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            1.7274982   1.4352430   2.079265
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.3529978   1.1706899   1.563696
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000          NA         NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.2762238          NA         NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            2.4325474          NA         NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.7183258          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5            1.0000000          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            2.7320606          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            1.8186245          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            1.1999639          NA         NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.0340971   1.7737104   2.332710
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.5758674   1.4703540   1.688953
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.3675965   1.2913466   1.448349
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            2.2034843   1.6511776   2.940533
12 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.5447655   1.1765765   2.028173
12 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.3064543   0.9846035   1.733513
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            2.0900000   1.3709181   3.186259
18 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.8445122   1.2117185   2.807769
18 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.1000000   0.6614717   1.829254
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.5574163   1.0600824   2.288073
18 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.2631579   0.8547409   1.866727
18 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.2894737   0.8759927   1.898124
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000          NA         NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            1.7578544          NA         NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.5312608          NA         NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.1525641          NA         NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.0092497   1.4969151   2.696936
18 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.5612245   1.1497428   2.119971
18 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.4332553   1.0401463   1.974934
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.8258028   1.9139118   4.172168
18 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.2381643   1.5025546   3.333908
18 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.8150097   1.1944264   2.758027
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            1.8055970   1.3856731   2.352777
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.5409836   1.2071278   1.967174
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.2968674   0.9976299   1.685861
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            1.3819018   0.8400286   2.273319
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            1.6493667   1.3932714   1.952535
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.2275596   1.0655943   1.414143
18 months   ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5            1.0000000          NA         NA
18 months   ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            2.4931823          NA         NA
18 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            1.6675049          NA         NA
18 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            1.1979077          NA         NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            1.8029310   1.6060112   2.023996
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.4253290   1.3368476   1.519667
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.2562122   1.1897068   1.326435
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            2.0192872   1.5557081   2.621006
18 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.4629347   1.1417615   1.874453
18 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.3200180   1.0230843   1.703132
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.9907407   1.3680291   2.896904
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.6443001   1.1201505   2.413714
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.1710240   0.7459801   1.838249
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.5840909   1.1129510   2.254676
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.2300000   0.8511453   1.777487
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.2812500   0.8922055   1.839937
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            1.8200466   1.4291842   2.317805
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.4575569   1.1308517   1.878648
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.3322793   1.0191929   1.741543
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.5217181   1.7913228   3.549925
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.1573080   1.5241320   3.053527
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.5976190   1.0991215   2.322206
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            1.6518445   1.2954793   2.106240
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.4408941   1.1504748   1.804625
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.2121212   0.9466151   1.552096
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000          NA         NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.2702703          NA         NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            1.9717718          NA         NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.8223140          NA         NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            1.1837168   0.9675976   1.448108
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.1668349   1.0822492   1.258032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.1306013   1.0593789   1.206612
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            1.5604335   1.2617974   1.929749
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.3351677   1.1040787   1.614625
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.2014847   0.9865687   1.463218


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.0677783   -0.0358522   0.1714087
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1095041    0.0065728   0.2124355
3 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.0755968    0.0044281   0.1467655
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.0830406    0.0126048   0.1534764
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1094918    0.0598378   0.1591457
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0688943    0.0306745   0.1071142
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0215900    0.0116194   0.0315605
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0422923    0.0350707   0.0495139
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1169736    0.0084814   0.2254659
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.0914664   -0.0293306   0.2122634
6 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.0722908   -0.0039267   0.1485084
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.1212694           NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.0908187   -0.0057533   0.1873907
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1424100    0.0858594   0.1989607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1091486    0.0578343   0.1604628
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0351395    0.0218538   0.0484251
6 months    ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0091518           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0583588    0.0493893   0.0673282
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1007907   -0.0366047   0.2381861
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.0905368   -0.0325042   0.2135778
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.0934066   -0.0407459   0.2275591
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2435142           NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.1768330    0.0767371   0.2769290
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1978487    0.1356920   0.2600055
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1157239    0.0603487   0.1710990
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0448114    0.0288069   0.0608159
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.0858399           NA          NA
12 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0102970           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0650008    0.0558640   0.0741376
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1429096    0.0657724   0.2200467
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2034632    0.0743845   0.3325419
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1265664   -0.0094440   0.2625768
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2149242           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2381347    0.1298705   0.3463989
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.2127122    0.1419890   0.2834355
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1188886    0.0601157   0.1776614
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0442107    0.0244528   0.0639685
18 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0101997           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0664545    0.0548785   0.0780306
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1516267    0.0684226   0.2348309
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2023999    0.0704451   0.3343547
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1333405   -0.0045702   0.2712512
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2396941    0.1281353   0.3512530
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.2256611    0.1496500   0.3016722
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1133420    0.0500186   0.1766654
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.1627975           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0506535    0.0287558   0.0725512
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1305662    0.0483562   0.2127762


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2391068   -0.2283035   0.5286519
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.4076923   -0.1210057   0.6870414
3 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.2192308   -0.0163252   0.4001914
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3730897   -0.0335611   0.6197452
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.5678295    0.2377144   0.7549850
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.4298779    0.1461951   0.6193050
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.2130877    0.1114232   0.3031204
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1871819    0.1549379   0.2181957
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3425656   -0.0630719   0.5934236
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2633791   -0.1801434   0.5402166
6 months    ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.1625098   -0.0281659   0.3178243
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2827046           NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2489607   -0.0681519   0.4719290
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.5617284    0.2857109   0.7310865
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.3554572    0.1671697   0.5011764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1764210    0.1080025   0.2395916
6 months    ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0894190           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1960013    0.1655315   0.2253586
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2815906   -0.2249121   0.5786538
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2100806   -0.1343026   0.4499063
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1969112   -0.1428905   0.4356838
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.4146586           NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3466184    0.1167551   0.5166600
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.5984678    0.3705673   0.7438518
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.3045585    0.1429284   0.4357077
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1414452    0.0895934   0.1903437
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.4173963           NA          NA
12 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0730181           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1695626    0.1453695   0.1930708
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.3017805    0.1178473   0.4473627
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3587786    0.0820491   0.5520841
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2186147   -0.0573890   0.4225749
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3075640           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3664178    0.1729366   0.5146364
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.5110179    0.3108151   0.6530633
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2681556    0.1224635   0.3896593
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1088850    0.0587603   0.1563403
18 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0664701           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1345236    0.1106110   0.1577933
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2739851    0.1058096   0.4105308
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3259234    0.0717008   0.5105250
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2146687   -0.0441646   0.4093410
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3173415    0.1488658   0.4524688
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.4699251    0.2856028   0.6066902
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2259711    0.0880443   0.3430375
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.3927580           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0697235    0.0388168   0.0996364
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2002752    0.0626367   0.3177035
