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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/9640fa47-602f-4326-8ccc-7d9172b70b66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9640fa47-602f-4326-8ccc-7d9172b70b66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/9640fa47-602f-4326-8ccc-7d9172b70b66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9640fa47-602f-4326-8ccc-7d9172b70b66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  --------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=20       1498    340    284     56
Birth       ki0047075b-MAL-ED          (20-24]    1498    378    326     52
Birth       ki0047075b-MAL-ED          (24-28]    1498    399    350     49
Birth       ki0047075b-MAL-ED          >28        1498    381    340     41
Birth       ki1000108-CMC-V-BCS-2002   <=20         90     20     15      5
Birth       ki1000108-CMC-V-BCS-2002   (20-24]      90     33     26      7
Birth       ki1000108-CMC-V-BCS-2002   (24-28]      90     29     26      3
Birth       ki1000108-CMC-V-BCS-2002   >28          90      8      7      1
Birth       ki1000108-IRC              <=20        388     81     67     14
Birth       ki1000108-IRC              (20-24]     388    164    145     19
Birth       ki1000108-IRC              (24-28]     388    102     92     10
Birth       ki1000108-IRC              >28         388     41     39      2
Birth       ki1000109-EE               <=20          2      0      0      0
Birth       ki1000109-EE               (20-24]       2      0      0      0
Birth       ki1000109-EE               (24-28]       2      0      0      0
Birth       ki1000109-EE               >28           2      2      1      1
Birth       ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
Birth       ki1017093-NIH-Birth        <=20         28      9      9      0
Birth       ki1017093-NIH-Birth        (20-24]      28      7      7      0
Birth       ki1017093-NIH-Birth        (24-28]      28      5      4      1
Birth       ki1017093-NIH-Birth        >28          28      7      7      0
Birth       ki1017093b-PROVIDE         <=20          0      0      0      0
Birth       ki1017093b-PROVIDE         (20-24]       0      0      0      0
Birth       ki1017093b-PROVIDE         (24-28]       0      0      0      0
Birth       ki1017093b-PROVIDE         >28           0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=20         27     10      8      2
Birth       ki1017093c-NIH-Crypto      (20-24]      27      6      4      2
Birth       ki1017093c-NIH-Crypto      (24-28]      27      9      9      0
Birth       ki1017093c-NIH-Crypto      >28          27      2      1      1
Birth       ki1066203-TanzaniaChild2   <=20          0      0      0      0
Birth       ki1066203-TanzaniaChild2   (20-24]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (24-28]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >28           0      0      0      0
Birth       ki1101329-Keneba           <=20       1541    327    302     25
Birth       ki1101329-Keneba           (20-24]    1541    276    259     17
Birth       ki1101329-Keneba           (24-28]    1541    265    255     10
Birth       ki1101329-Keneba           >28        1541    673    643     30
Birth       ki1112895-Guatemala BSC    <=20          0      0      0      0
Birth       ki1112895-Guatemala BSC    (20-24]       0      0      0      0
Birth       ki1112895-Guatemala BSC    (24-28]       0      0      0      0
Birth       ki1112895-Guatemala BSC    >28           0      0      0      0
Birth       ki1113344-GMS-Nepal        <=20          0      0      0      0
Birth       ki1113344-GMS-Nepal        (20-24]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (24-28]       0      0      0      0
Birth       ki1113344-GMS-Nepal        >28           0      0      0      0
Birth       ki1126311-ZVITAMBO         <=20       3439    878    782     96
Birth       ki1126311-ZVITAMBO         (20-24]    3439   1130   1000    130
Birth       ki1126311-ZVITAMBO         (24-28]    3439    749    676     73
Birth       ki1126311-ZVITAMBO         >28        3439    682    622     60
Birth       ki1135781-COHORTS          <=20       8172   1302   1144    158
Birth       ki1135781-COHORTS          (20-24]    8172   2198   1993    205
Birth       ki1135781-COHORTS          (24-28]    8172   2181   1986    195
Birth       ki1135781-COHORTS          >28        8172   2491   2285    206
Birth       ki1148112-LCNI-5           <=20          0      0      0      0
Birth       ki1148112-LCNI-5           (20-24]       0      0      0      0
Birth       ki1148112-LCNI-5           (24-28]       0      0      0      0
Birth       ki1148112-LCNI-5           >28           0      0      0      0
3 months    ki0047075b-MAL-ED          <=20       1776    388    304     84
3 months    ki0047075b-MAL-ED          (20-24]    1776    417    357     60
3 months    ki0047075b-MAL-ED          (24-28]    1776    479    414     65
3 months    ki0047075b-MAL-ED          >28        1776    492    427     65
3 months    ki1000108-CMC-V-BCS-2002   <=20        362     69     44     25
3 months    ki1000108-CMC-V-BCS-2002   (20-24]     362    145    112     33
3 months    ki1000108-CMC-V-BCS-2002   (24-28]     362     98     73     25
3 months    ki1000108-CMC-V-BCS-2002   >28         362     50     43      7
3 months    ki1000108-IRC              <=20        407     86     62     24
3 months    ki1000108-IRC              (20-24]     407    170    133     37
3 months    ki1000108-IRC              (24-28]     407    108     87     21
3 months    ki1000108-IRC              >28         407     43     34      9
3 months    ki1000109-EE               <=20        374      4      2      2
3 months    ki1000109-EE               (20-24]     374     17      7     10
3 months    ki1000109-EE               (24-28]     374    115     41     74
3 months    ki1000109-EE               >28         374    238    108    130
3 months    ki1000304b-SAS-FoodSuppl   <=20         97     25     16      9
3 months    ki1000304b-SAS-FoodSuppl   (20-24]      97     17     12      5
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97     37     18     19
3 months    ki1000304b-SAS-FoodSuppl   >28          97     18     13      5
3 months    ki1017093-NIH-Birth        <=20        568    132    108     24
3 months    ki1017093-NIH-Birth        (20-24]     568    143    110     33
3 months    ki1017093-NIH-Birth        (24-28]     568    157    118     39
3 months    ki1017093-NIH-Birth        >28         568    136    103     33
3 months    ki1017093b-PROVIDE         <=20        168     38     31      7
3 months    ki1017093b-PROVIDE         (20-24]     168     53     50      3
3 months    ki1017093b-PROVIDE         (24-28]     168     43     37      6
3 months    ki1017093b-PROVIDE         >28         168     34     30      4
3 months    ki1017093c-NIH-Crypto      <=20        728    218    167     51
3 months    ki1017093c-NIH-Crypto      (20-24]     728    164    128     36
3 months    ki1017093c-NIH-Crypto      (24-28]     728    202    159     43
3 months    ki1017093c-NIH-Crypto      >28         728    144    118     26
3 months    ki1066203-TanzaniaChild2   <=20        573     67     60      7
3 months    ki1066203-TanzaniaChild2   (20-24]     573    151    136     15
3 months    ki1066203-TanzaniaChild2   (24-28]     573    163    154      9
3 months    ki1066203-TanzaniaChild2   >28         573    192    184      8
3 months    ki1101329-Keneba           <=20       2174    445    374     71
3 months    ki1101329-Keneba           (20-24]    2174    443    381     62
3 months    ki1101329-Keneba           (24-28]    2174    384    334     50
3 months    ki1101329-Keneba           >28        2174    902    773    129
3 months    ki1112895-Guatemala BSC    <=20          4      2      0      2
3 months    ki1112895-Guatemala BSC    (20-24]       4      2      2      0
3 months    ki1112895-Guatemala BSC    (24-28]       4      0      0      0
3 months    ki1112895-Guatemala BSC    >28           4      0      0      0
3 months    ki1113344-GMS-Nepal        <=20        571    167    134     33
3 months    ki1113344-GMS-Nepal        (20-24]     571    146    126     20
3 months    ki1113344-GMS-Nepal        (24-28]     571    159    140     19
3 months    ki1113344-GMS-Nepal        >28         571     99     87     12
3 months    ki1126311-ZVITAMBO         <=20       2267    540    433    107
3 months    ki1126311-ZVITAMBO         (20-24]    2267    709    588    121
3 months    ki1126311-ZVITAMBO         (24-28]    2267    519    434     85
3 months    ki1126311-ZVITAMBO         >28        2267    499    421     78
3 months    ki1135781-COHORTS          <=20       8370   1335   1098    237
3 months    ki1135781-COHORTS          (20-24]    8370   2235   1925    310
3 months    ki1135781-COHORTS          (24-28]    8370   2259   1953    306
3 months    ki1135781-COHORTS          >28        8370   2541   2111    430
3 months    ki1148112-LCNI-5           <=20          0      0      0      0
3 months    ki1148112-LCNI-5           (20-24]       0      0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0      0      0      0
3 months    ki1148112-LCNI-5           >28           0      0      0      0
6 months    ki0047075b-MAL-ED          <=20       1694    369    294     75
6 months    ki0047075b-MAL-ED          (20-24]    1694    394    326     68
6 months    ki0047075b-MAL-ED          (24-28]    1694    459    401     58
6 months    ki0047075b-MAL-ED          >28        1694    472    398     74
6 months    ki1000108-CMC-V-BCS-2002   <=20        369     69     44     25
6 months    ki1000108-CMC-V-BCS-2002   (20-24]     369    149    106     43
6 months    ki1000108-CMC-V-BCS-2002   (24-28]     369    100     73     27
6 months    ki1000108-CMC-V-BCS-2002   >28         369     51     35     16
6 months    ki1000108-IRC              <=20        407     86     63     23
6 months    ki1000108-IRC              (20-24]     407    169    122     47
6 months    ki1000108-IRC              (24-28]     407    108     86     22
6 months    ki1000108-IRC              >28         407     44     36      8
6 months    ki1000109-EE               <=20        370      4      3      1
6 months    ki1000109-EE               (20-24]     370     16      8      8
6 months    ki1000109-EE               (24-28]     370    114     53     61
6 months    ki1000109-EE               >28         370    236    114    122
6 months    ki1000304b-SAS-FoodSuppl   <=20         96     28     17     11
6 months    ki1000304b-SAS-FoodSuppl   (20-24]      96     15      7      8
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96     35     14     21
6 months    ki1000304b-SAS-FoodSuppl   >28          96     18     10      8
6 months    ki1017093-NIH-Birth        <=20        535    125    101     24
6 months    ki1017093-NIH-Birth        (20-24]     535    131     95     36
6 months    ki1017093-NIH-Birth        (24-28]     535    150    107     43
6 months    ki1017093-NIH-Birth        >28         535    129     89     40
6 months    ki1017093b-PROVIDE         <=20        153     35     29      6
6 months    ki1017093b-PROVIDE         (20-24]     153     46     39      7
6 months    ki1017093b-PROVIDE         (24-28]     153     40     34      6
6 months    ki1017093b-PROVIDE         >28         153     32     23      9
6 months    ki1017093c-NIH-Crypto      <=20        715    215    167     48
6 months    ki1017093c-NIH-Crypto      (20-24]     715    159    116     43
6 months    ki1017093c-NIH-Crypto      (24-28]     715    200    168     32
6 months    ki1017093c-NIH-Crypto      >28         715    141    114     27
6 months    ki1066203-TanzaniaChild2   <=20        502     61     55      6
6 months    ki1066203-TanzaniaChild2   (20-24]     502    127    119      8
6 months    ki1066203-TanzaniaChild2   (24-28]     502    141    124     17
6 months    ki1066203-TanzaniaChild2   >28         502    173    159     14
6 months    ki1101329-Keneba           <=20       2080    405    356     49
6 months    ki1101329-Keneba           (20-24]    2080    407    362     45
6 months    ki1101329-Keneba           (24-28]    2080    376    329     47
6 months    ki1101329-Keneba           >28        2080    892    740    152
6 months    ki1112895-Guatemala BSC    <=20         90     26     15     11
6 months    ki1112895-Guatemala BSC    (20-24]      90     31     26      5
6 months    ki1112895-Guatemala BSC    (24-28]      90     13     10      3
6 months    ki1112895-Guatemala BSC    >28          90     20     13      7
6 months    ki1113344-GMS-Nepal        <=20        563    160    122     38
6 months    ki1113344-GMS-Nepal        (20-24]     563    147    119     28
6 months    ki1113344-GMS-Nepal        (24-28]     563    161    131     30
6 months    ki1113344-GMS-Nepal        >28         563     95     72     23
6 months    ki1126311-ZVITAMBO         <=20       2049    495    408     87
6 months    ki1126311-ZVITAMBO         (20-24]    2049    655    554    101
6 months    ki1126311-ZVITAMBO         (24-28]    2049    453    371     82
6 months    ki1126311-ZVITAMBO         >28        2049    446    381     65
6 months    ki1135781-COHORTS          <=20       8076   1265    947    318
6 months    ki1135781-COHORTS          (20-24]    8076   2169   1753    416
6 months    ki1135781-COHORTS          (24-28]    8076   2180   1757    423
6 months    ki1135781-COHORTS          >28        8076   2462   1875    587
6 months    ki1148112-LCNI-5           <=20        343     83     57     26
6 months    ki1148112-LCNI-5           (20-24]     343     82     53     29
6 months    ki1148112-LCNI-5           (24-28]     343     80     49     31
6 months    ki1148112-LCNI-5           >28         343     98     57     41
9 months    ki0047075b-MAL-ED          <=20       1638    352    272     80
9 months    ki0047075b-MAL-ED          (20-24]    1638    371    295     76
9 months    ki0047075b-MAL-ED          (24-28]    1638    449    360     89
9 months    ki0047075b-MAL-ED          >28        1638    466    373     93
9 months    ki1000108-CMC-V-BCS-2002   <=20        366     69     44     25
9 months    ki1000108-CMC-V-BCS-2002   (20-24]     366    149     90     59
9 months    ki1000108-CMC-V-BCS-2002   (24-28]     366     99     66     33
9 months    ki1000108-CMC-V-BCS-2002   >28         366     49     31     18
9 months    ki1000108-IRC              <=20        407     86     58     28
9 months    ki1000108-IRC              (20-24]     407    169    120     49
9 months    ki1000108-IRC              (24-28]     407    108     80     28
9 months    ki1000108-IRC              >28         407     44     38      6
9 months    ki1000109-EE               <=20        364      4      2      2
9 months    ki1000109-EE               (20-24]     364     17      5     12
9 months    ki1000109-EE               (24-28]     364    113     53     60
9 months    ki1000109-EE               >28         364    230     89    141
9 months    ki1000304b-SAS-FoodSuppl   <=20         85     24     11     13
9 months    ki1000304b-SAS-FoodSuppl   (20-24]      85     13      5      8
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85     32      8     24
9 months    ki1000304b-SAS-FoodSuppl   >28          85     16      4     12
9 months    ki1017093-NIH-Birth        <=20        505    114     79     35
9 months    ki1017093-NIH-Birth        (20-24]     505    125     79     46
9 months    ki1017093-NIH-Birth        (24-28]     505    145     88     57
9 months    ki1017093-NIH-Birth        >28         505    121     78     43
9 months    ki1017093b-PROVIDE         <=20        158     36     24     12
9 months    ki1017093b-PROVIDE         (20-24]     158     49     40      9
9 months    ki1017093b-PROVIDE         (24-28]     158     40     33      7
9 months    ki1017093b-PROVIDE         >28         158     33     24      9
9 months    ki1017093c-NIH-Crypto      <=20        706    209    156     53
9 months    ki1017093c-NIH-Crypto      (20-24]     706    162    122     40
9 months    ki1017093c-NIH-Crypto      (24-28]     706    195    155     40
9 months    ki1017093c-NIH-Crypto      >28         706    140    109     31
9 months    ki1066203-TanzaniaChild2   <=20        432     46     41      5
9 months    ki1066203-TanzaniaChild2   (20-24]     432    109     88     21
9 months    ki1066203-TanzaniaChild2   (24-28]     432    125    107     18
9 months    ki1066203-TanzaniaChild2   >28         432    152    134     18
9 months    ki1101329-Keneba           <=20       2057    383    327     56
9 months    ki1101329-Keneba           (20-24]    2057    394    337     57
9 months    ki1101329-Keneba           (24-28]    2057    377    308     69
9 months    ki1101329-Keneba           >28        2057    903    713    190
9 months    ki1112895-Guatemala BSC    <=20         60     17      8      9
9 months    ki1112895-Guatemala BSC    (20-24]      60     20     14      6
9 months    ki1112895-Guatemala BSC    (24-28]      60     11      8      3
9 months    ki1112895-Guatemala BSC    >28          60     12      8      4
9 months    ki1113344-GMS-Nepal        <=20        551    161    109     52
9 months    ki1113344-GMS-Nepal        (20-24]     551    141    102     39
9 months    ki1113344-GMS-Nepal        (24-28]     551    158    120     38
9 months    ki1113344-GMS-Nepal        >28         551     91     65     26
9 months    ki1126311-ZVITAMBO         <=20       1960    474    368    106
9 months    ki1126311-ZVITAMBO         (20-24]    1960    620    495    125
9 months    ki1126311-ZVITAMBO         (24-28]    1960    450    369     81
9 months    ki1126311-ZVITAMBO         >28        1960    416    346     70
9 months    ki1135781-COHORTS          <=20       7448   1169    783    386
9 months    ki1135781-COHORTS          (20-24]    7448   1954   1422    532
9 months    ki1135781-COHORTS          (24-28]    7448   1994   1461    533
9 months    ki1135781-COHORTS          >28        7448   2331   1584    747
9 months    ki1148112-LCNI-5           <=20        269     72     52     20
9 months    ki1148112-LCNI-5           (20-24]     269     61     39     22
9 months    ki1148112-LCNI-5           (24-28]     269     63     42     21
9 months    ki1148112-LCNI-5           >28         269     73     50     23
12 months   ki0047075b-MAL-ED          <=20       1614    348    245    103
12 months   ki0047075b-MAL-ED          (20-24]    1614    367    274     93
12 months   ki0047075b-MAL-ED          (24-28]    1614    444    334    110
12 months   ki0047075b-MAL-ED          >28        1614    455    326    129
12 months   ki1000108-CMC-V-BCS-2002   <=20        368     69     32     37
12 months   ki1000108-CMC-V-BCS-2002   (20-24]     368    148     77     71
12 months   ki1000108-CMC-V-BCS-2002   (24-28]     368    100     49     51
12 months   ki1000108-CMC-V-BCS-2002   >28         368     51     27     24
12 months   ki1000108-IRC              <=20        406     85     64     21
12 months   ki1000108-IRC              (20-24]     406    169    109     60
12 months   ki1000108-IRC              (24-28]     406    108     78     30
12 months   ki1000108-IRC              >28         406     44     36      8
12 months   ki1000109-EE               <=20        355      4      2      2
12 months   ki1000109-EE               (20-24]     355     15      4     11
12 months   ki1000109-EE               (24-28]     355    110     35     75
12 months   ki1000109-EE               >28         355    226     61    165
12 months   ki1000304b-SAS-FoodSuppl   <=20         92     24      6     18
12 months   ki1000304b-SAS-FoodSuppl   (20-24]      92     16      4     12
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92     35      6     29
12 months   ki1000304b-SAS-FoodSuppl   >28          92     17      3     14
12 months   ki1017093-NIH-Birth        <=20        489    113     79     34
12 months   ki1017093-NIH-Birth        (20-24]     489    121     69     52
12 months   ki1017093-NIH-Birth        (24-28]     489    141     88     53
12 months   ki1017093-NIH-Birth        >28         489    114     70     44
12 months   ki1017093b-PROVIDE         <=20        153     33     21     12
12 months   ki1017093b-PROVIDE         (20-24]     153     49     36     13
12 months   ki1017093b-PROVIDE         (24-28]     153     40     33      7
12 months   ki1017093b-PROVIDE         >28         153     31     19     12
12 months   ki1017093c-NIH-Crypto      <=20        706    211    158     53
12 months   ki1017093c-NIH-Crypto      (20-24]     706    156    116     40
12 months   ki1017093c-NIH-Crypto      (24-28]     706    198    154     44
12 months   ki1017093c-NIH-Crypto      >28         706    141    107     34
12 months   ki1066203-TanzaniaChild2   <=20        355     39     33      6
12 months   ki1066203-TanzaniaChild2   (20-24]     355     92     76     16
12 months   ki1066203-TanzaniaChild2   (24-28]     355    102     89     13
12 months   ki1066203-TanzaniaChild2   >28         355    122    105     17
12 months   ki1101329-Keneba           <=20       1935    363    284     79
12 months   ki1101329-Keneba           (20-24]    1935    362    285     77
12 months   ki1101329-Keneba           (24-28]    1935    366    279     87
12 months   ki1101329-Keneba           >28        1935    844    604    240
12 months   ki1112895-Guatemala BSC    <=20         53     16      5     11
12 months   ki1112895-Guatemala BSC    (20-24]      53     19     12      7
12 months   ki1112895-Guatemala BSC    (24-28]      53      7      6      1
12 months   ki1112895-Guatemala BSC    >28          53     11      7      4
12 months   ki1113344-GMS-Nepal        <=20        558    160    108     52
12 months   ki1113344-GMS-Nepal        (20-24]     558    141    100     41
12 months   ki1113344-GMS-Nepal        (24-28]     558    162    102     60
12 months   ki1113344-GMS-Nepal        >28         558     95     57     38
12 months   ki1126311-ZVITAMBO         <=20       1698    409    306    103
12 months   ki1126311-ZVITAMBO         (20-24]    1698    541    412    129
12 months   ki1126311-ZVITAMBO         (24-28]    1698    388    296     92
12 months   ki1126311-ZVITAMBO         >28        1698    360    279     81
12 months   ki1135781-COHORTS          <=20       6941   1053    586    467
12 months   ki1135781-COHORTS          (20-24]    6941   1805   1132    673
12 months   ki1135781-COHORTS          (24-28]    6941   1857   1188    669
12 months   ki1135781-COHORTS          >28        6941   2226   1271    955
12 months   ki1148112-LCNI-5           <=20        258     65     41     24
12 months   ki1148112-LCNI-5           (20-24]     258     59     33     26
12 months   ki1148112-LCNI-5           (24-28]     258     59     32     27
12 months   ki1148112-LCNI-5           >28         258     75     44     31
18 months   ki0047075b-MAL-ED          <=20       1544    322    185    137
18 months   ki0047075b-MAL-ED          (20-24]    1544    349    216    133
18 months   ki0047075b-MAL-ED          (24-28]    1544    433    273    160
18 months   ki0047075b-MAL-ED          >28        1544    440    273    167
18 months   ki1000108-CMC-V-BCS-2002   <=20        369     69     21     48
18 months   ki1000108-CMC-V-BCS-2002   (20-24]     369    150     41    109
18 months   ki1000108-CMC-V-BCS-2002   (24-28]     369     99     33     66
18 months   ki1000108-CMC-V-BCS-2002   >28         369     51     20     31
18 months   ki1000108-IRC              <=20        405     87     58     29
18 months   ki1000108-IRC              (20-24]     405    167     98     69
18 months   ki1000108-IRC              (24-28]     405    107     69     38
18 months   ki1000108-IRC              >28         405     44     36      8
18 months   ki1000109-EE               <=20        348      4      1      3
18 months   ki1000109-EE               (20-24]     348     15      2     13
18 months   ki1000109-EE               (24-28]     348    108     18     90
18 months   ki1000109-EE               >28         348    221     32    189
18 months   ki1000304b-SAS-FoodSuppl   <=20         84     23      2     21
18 months   ki1000304b-SAS-FoodSuppl   (20-24]      84     16      2     14
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84     31      5     26
18 months   ki1000304b-SAS-FoodSuppl   >28          84     14      1     13
18 months   ki1017093-NIH-Birth        <=20        461    106     40     66
18 months   ki1017093-NIH-Birth        (20-24]     461    114     49     65
18 months   ki1017093-NIH-Birth        (24-28]     461    130     49     81
18 months   ki1017093-NIH-Birth        >28         461    111     52     59
18 months   ki1017093b-PROVIDE         <=20        141     31     17     14
18 months   ki1017093b-PROVIDE         (20-24]     141     44     31     13
18 months   ki1017093b-PROVIDE         (24-28]     141     38     26     12
18 months   ki1017093b-PROVIDE         >28         141     28     15     13
18 months   ki1017093c-NIH-Crypto      <=20        634    192    137     55
18 months   ki1017093c-NIH-Crypto      (20-24]     634    144    103     41
18 months   ki1017093c-NIH-Crypto      (24-28]     634    177    120     57
18 months   ki1017093c-NIH-Crypto      >28         634    121     83     38
18 months   ki1066203-TanzaniaChild2   <=20        257     26     19      7
18 months   ki1066203-TanzaniaChild2   (20-24]     257     62     43     19
18 months   ki1066203-TanzaniaChild2   (24-28]     257     78     56     22
18 months   ki1066203-TanzaniaChild2   >28         257     91     71     20
18 months   ki1101329-Keneba           <=20       1910    340    242     98
18 months   ki1101329-Keneba           (20-24]    1910    355    251    104
18 months   ki1101329-Keneba           (24-28]    1910    348    236    112
18 months   ki1101329-Keneba           >28        1910    867    561    306
18 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
18 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
18 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
18 months   ki1112895-Guatemala BSC    >28           0      0      0      0
18 months   ki1113344-GMS-Nepal        <=20        550    163     77     86
18 months   ki1113344-GMS-Nepal        (20-24]     550    138     68     70
18 months   ki1113344-GMS-Nepal        (24-28]     550    158     72     86
18 months   ki1113344-GMS-Nepal        >28         550     91     41     50
18 months   ki1126311-ZVITAMBO         <=20        425     94     51     43
18 months   ki1126311-ZVITAMBO         (20-24]     425    138     66     72
18 months   ki1126311-ZVITAMBO         (24-28]     425     98     58     40
18 months   ki1126311-ZVITAMBO         >28         425     95     48     47
18 months   ki1135781-COHORTS          <=20       2928    518    185    333
18 months   ki1135781-COHORTS          (20-24]    2928    731    293    438
18 months   ki1135781-COHORTS          (24-28]    2928    683    268    415
18 months   ki1135781-COHORTS          >28        2928    996    352    644
18 months   ki1148112-LCNI-5           <=20        298     70     34     36
18 months   ki1148112-LCNI-5           (20-24]     298     72     32     40
18 months   ki1148112-LCNI-5           (24-28]     298     69     34     35
18 months   ki1148112-LCNI-5           >28         298     87     48     39
24 months   ki0047075b-MAL-ED          <=20       1487    296    180    116
24 months   ki0047075b-MAL-ED          (20-24]    1487    341    218    123
24 months   ki0047075b-MAL-ED          (24-28]    1487    422    267    155
24 months   ki0047075b-MAL-ED          >28        1487    428    264    164
24 months   ki1000108-CMC-V-BCS-2002   <=20        372     71     21     50
24 months   ki1000108-CMC-V-BCS-2002   (20-24]     372    150     40    110
24 months   ki1000108-CMC-V-BCS-2002   (24-28]     372    101     33     68
24 months   ki1000108-CMC-V-BCS-2002   >28         372     50     12     38
24 months   ki1000108-IRC              <=20        409     87     49     38
24 months   ki1000108-IRC              (20-24]     409    170     98     72
24 months   ki1000108-IRC              (24-28]     409    108     63     45
24 months   ki1000108-IRC              >28         409     44     29     15
24 months   ki1000109-EE               <=20          0      0      0      0
24 months   ki1000109-EE               (20-24]       0      0      0      0
24 months   ki1000109-EE               (24-28]       0      0      0      0
24 months   ki1000109-EE               >28           0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
24 months   ki1017093-NIH-Birth        <=20        427     98     45     53
24 months   ki1017093-NIH-Birth        (20-24]     427    107     49     58
24 months   ki1017093-NIH-Birth        (24-28]     427    119     50     69
24 months   ki1017093-NIH-Birth        >28         427    103     46     57
24 months   ki1017093b-PROVIDE         <=20        149     33     19     14
24 months   ki1017093b-PROVIDE         (20-24]     149     48     37     11
24 months   ki1017093b-PROVIDE         (24-28]     149     38     28     10
24 months   ki1017093b-PROVIDE         >28         149     30     16     14
24 months   ki1017093c-NIH-Crypto      <=20        514    162    126     36
24 months   ki1017093c-NIH-Crypto      (20-24]     514    115     81     34
24 months   ki1017093c-NIH-Crypto      (24-28]     514    143    105     38
24 months   ki1017093c-NIH-Crypto      >28         514     94     70     24
24 months   ki1066203-TanzaniaChild2   <=20          2      1      1      0
24 months   ki1066203-TanzaniaChild2   (20-24]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (24-28]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >28           2      1      1      0
24 months   ki1101329-Keneba           <=20       1714    307    205    102
24 months   ki1101329-Keneba           (20-24]    1714    316    215    101
24 months   ki1101329-Keneba           (24-28]    1714    312    215     97
24 months   ki1101329-Keneba           >28        1714    779    505    274
24 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
24 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
24 months   ki1112895-Guatemala BSC    >28           0      0      0      0
24 months   ki1113344-GMS-Nepal        <=20        499    146     81     65
24 months   ki1113344-GMS-Nepal        (20-24]     499    126     69     57
24 months   ki1113344-GMS-Nepal        (24-28]     499    140     76     64
24 months   ki1113344-GMS-Nepal        >28         499     87     50     37
24 months   ki1126311-ZVITAMBO         <=20        116     27     10     17
24 months   ki1126311-ZVITAMBO         (20-24]     116     41     18     23
24 months   ki1126311-ZVITAMBO         (24-28]     116     22     10     12
24 months   ki1126311-ZVITAMBO         >28         116     26     10     16
24 months   ki1135781-COHORTS          <=20       6658   1016    353    663
24 months   ki1135781-COHORTS          (20-24]    6658   1736    804    932
24 months   ki1135781-COHORTS          (24-28]    6658   1774    859    915
24 months   ki1135781-COHORTS          >28        6658   2132    874   1258
24 months   ki1148112-LCNI-5           <=20        250     60     38     22
24 months   ki1148112-LCNI-5           (20-24]     250     56     27     29
24 months   ki1148112-LCNI-5           (24-28]     250     60     28     32
24 months   ki1148112-LCNI-5           >28         250     74     43     31

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          <=20                 NA                0.1647059   0.1252667   0.2041451
Birth       ki0047075b-MAL-ED          (20-24]              NA                0.1375661   0.1028313   0.1723010
Birth       ki0047075b-MAL-ED          (24-28]              NA                0.1228070   0.0905914   0.1550226
Birth       ki0047075b-MAL-ED          >28                  NA                0.1076115   0.0764846   0.1387385
Birth       ki1101329-Keneba           <=20                 NA                0.0764526   0.0476428   0.1052624
Birth       ki1101329-Keneba           (20-24]              NA                0.0615942   0.0332216   0.0899668
Birth       ki1101329-Keneba           (24-28]              NA                0.0377358   0.0147854   0.0606863
Birth       ki1101329-Keneba           >28                  NA                0.0445765   0.0289798   0.0601732
Birth       ki1126311-ZVITAMBO         <=20                 NA                0.1093394   0.0886947   0.1299841
Birth       ki1126311-ZVITAMBO         (20-24]              NA                0.1150442   0.0964377   0.1336508
Birth       ki1126311-ZVITAMBO         (24-28]              NA                0.0974633   0.0762199   0.1187066
Birth       ki1126311-ZVITAMBO         >28                  NA                0.0879765   0.0667145   0.1092386
Birth       ki1135781-COHORTS          <=20                 NA                0.1213518   0.1036140   0.1390896
Birth       ki1135781-COHORTS          (20-24]              NA                0.0932666   0.0811086   0.1054247
Birth       ki1135781-COHORTS          (24-28]              NA                0.0894085   0.0774329   0.1013842
Birth       ki1135781-COHORTS          >28                  NA                0.0826977   0.0718811   0.0935143
3 months    ki0047075b-MAL-ED          <=20                 NA                0.2164948   0.1755028   0.2574869
3 months    ki0047075b-MAL-ED          (20-24]              NA                0.1438849   0.1101891   0.1775807
3 months    ki0047075b-MAL-ED          (24-28]              NA                0.1356994   0.1050216   0.1663772
3 months    ki0047075b-MAL-ED          >28                  NA                0.1321138   0.1021847   0.1620429
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487468   0.4758909
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.2275862   0.1592481   0.2959243
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.2551020   0.1686767   0.3415274
3 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.1400000   0.0436888   0.2363112
3 months    ki1000108-IRC              <=20                 NA                0.2790698   0.1841545   0.3739850
3 months    ki1000108-IRC              (20-24]              NA                0.2176471   0.1555408   0.2797533
3 months    ki1000108-IRC              (24-28]              NA                0.1944444   0.1197108   0.2691780
3 months    ki1000108-IRC              >28                  NA                0.2093023   0.0875604   0.3310443
3 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3600000   0.1708660   0.5491340
3 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.2941176   0.0763965   0.5118388
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.5135135   0.3516277   0.6753993
3 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.2777778   0.0697860   0.4857696
3 months    ki1017093-NIH-Birth        <=20                 NA                0.1818182   0.1159634   0.2476730
3 months    ki1017093-NIH-Birth        (20-24]              NA                0.2307692   0.1616530   0.2998855
3 months    ki1017093-NIH-Birth        (24-28]              NA                0.2484076   0.1807597   0.3160556
3 months    ki1017093-NIH-Birth        >28                  NA                0.2426471   0.1705367   0.3147575
3 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2339450   0.1777102   0.2901798
3 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2195122   0.1561198   0.2829046
3 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.2128713   0.1563838   0.2693588
3 months    ki1017093c-NIH-Crypto      >28                  NA                0.1805556   0.1176874   0.2434237
3 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1044776   0.0311716   0.1777837
3 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.0993377   0.0515873   0.1470882
3 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.0552147   0.0201212   0.0903083
3 months    ki1066203-TanzaniaChild2   >28                  NA                0.0416667   0.0133769   0.0699564
3 months    ki1101329-Keneba           <=20                 NA                0.1595506   0.1255197   0.1935814
3 months    ki1101329-Keneba           (20-24]              NA                0.1399549   0.1076401   0.1722696
3 months    ki1101329-Keneba           (24-28]              NA                0.1302083   0.0965409   0.1638757
3 months    ki1101329-Keneba           >28                  NA                0.1430155   0.1201636   0.1658674
3 months    ki1113344-GMS-Nepal        <=20                 NA                0.1976048   0.1371594   0.2580502
3 months    ki1113344-GMS-Nepal        (20-24]              NA                0.1369863   0.0811650   0.1928076
3 months    ki1113344-GMS-Nepal        (24-28]              NA                0.1194969   0.0690338   0.1699599
3 months    ki1113344-GMS-Nepal        >28                  NA                0.1212121   0.0568654   0.1855588
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.1981481   0.1645211   0.2317752
3 months    ki1126311-ZVITAMBO         (20-24]              NA                0.1706629   0.1429644   0.1983614
3 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1637765   0.1319311   0.1956219
3 months    ki1126311-ZVITAMBO         >28                  NA                0.1563126   0.1244427   0.1881826
3 months    ki1135781-COHORTS          <=20                 NA                0.1775281   0.1570293   0.1980268
3 months    ki1135781-COHORTS          (20-24]              NA                0.1387025   0.1243722   0.1530327
3 months    ki1135781-COHORTS          (24-28]              NA                0.1354582   0.1213454   0.1495709
3 months    ki1135781-COHORTS          >28                  NA                0.1692247   0.1546451   0.1838043
6 months    ki0047075b-MAL-ED          <=20                 NA                0.2032520   0.1621805   0.2443236
6 months    ki0047075b-MAL-ED          (20-24]              NA                0.1725888   0.1352642   0.2099134
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.1263617   0.0959568   0.1567665
6 months    ki0047075b-MAL-ED          >28                  NA                0.1567797   0.1239686   0.1895908
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487498   0.4758879
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.2885906   0.2157380   0.3614432
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.2700000   0.1828674   0.3571326
6 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.3137255   0.1862061   0.4412448
6 months    ki1000108-IRC              <=20                 NA                0.2674419   0.1737787   0.3611050
6 months    ki1000108-IRC              (20-24]              NA                0.2781065   0.2104700   0.3457430
6 months    ki1000108-IRC              (24-28]              NA                0.2037037   0.1276523   0.2797551
6 months    ki1000108-IRC              >28                  NA                0.1818182   0.0677145   0.2959218
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3928571   0.2110103   0.5747039
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.5333333   0.2795407   0.7871260
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.6000000   0.4368476   0.7631524
6 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.4444444   0.2136857   0.6752032
6 months    ki1017093-NIH-Birth        <=20                 NA                0.1920000   0.1228877   0.2611123
6 months    ki1017093-NIH-Birth        (20-24]              NA                0.2748092   0.1982917   0.3513266
6 months    ki1017093-NIH-Birth        (24-28]              NA                0.2866667   0.2142325   0.3591009
6 months    ki1017093-NIH-Birth        >28                  NA                0.3100775   0.2301871   0.3899680
6 months    ki1017093b-PROVIDE         <=20                 NA                0.1714286   0.0461593   0.2966978
6 months    ki1017093b-PROVIDE         (20-24]              NA                0.1521739   0.0480341   0.2563137
6 months    ki1017093b-PROVIDE         (24-28]              NA                0.1500000   0.0389811   0.2610189
6 months    ki1017093b-PROVIDE         >28                  NA                0.2812500   0.1249596   0.4375404
6 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2232558   0.1675535   0.2789581
6 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2704403   0.2013496   0.3395309
6 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.1600000   0.1091564   0.2108436
6 months    ki1017093c-NIH-Crypto      >28                  NA                0.1914894   0.1264977   0.2564810
6 months    ki1066203-TanzaniaChild2   <=20                 NA                0.0983607   0.0235535   0.1731678
6 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.0629921   0.0206966   0.1052876
6 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.1205674   0.0667667   0.1743681
6 months    ki1066203-TanzaniaChild2   >28                  NA                0.0809249   0.0402455   0.1216043
6 months    ki1101329-Keneba           <=20                 NA                0.1209877   0.0892194   0.1527559
6 months    ki1101329-Keneba           (20-24]              NA                0.1105651   0.0800917   0.1410385
6 months    ki1101329-Keneba           (24-28]              NA                0.1250000   0.0915637   0.1584363
6 months    ki1101329-Keneba           >28                  NA                0.1704036   0.1457237   0.1950835
6 months    ki1113344-GMS-Nepal        <=20                 NA                0.2375000   0.1715027   0.3034973
6 months    ki1113344-GMS-Nepal        (20-24]              NA                0.1904762   0.1269415   0.2540108
6 months    ki1113344-GMS-Nepal        (24-28]              NA                0.1863354   0.1261361   0.2465347
6 months    ki1113344-GMS-Nepal        >28                  NA                0.2421053   0.1558910   0.3283195
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.1757576   0.1422197   0.2092955
6 months    ki1126311-ZVITAMBO         (20-24]              NA                0.1541985   0.1265349   0.1818620
6 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1810155   0.1455504   0.2164805
6 months    ki1126311-ZVITAMBO         >28                  NA                0.1457399   0.1129854   0.1784944
6 months    ki1135781-COHORTS          <=20                 NA                0.2513834   0.2274763   0.2752905
6 months    ki1135781-COHORTS          (20-24]              NA                0.1917935   0.1752234   0.2083635
6 months    ki1135781-COHORTS          (24-28]              NA                0.1940367   0.1774352   0.2106382
6 months    ki1135781-COHORTS          >28                  NA                0.2384240   0.2215910   0.2552571
6 months    ki1148112-LCNI-5           <=20                 NA                0.3132530   0.2133246   0.4131814
6 months    ki1148112-LCNI-5           (20-24]              NA                0.3536585   0.2500255   0.4572916
6 months    ki1148112-LCNI-5           (24-28]              NA                0.3875000   0.2805881   0.4944119
6 months    ki1148112-LCNI-5           >28                  NA                0.4183673   0.3205598   0.5161749
9 months    ki0047075b-MAL-ED          <=20                 NA                0.2272727   0.1834806   0.2710649
9 months    ki0047075b-MAL-ED          (20-24]              NA                0.2048518   0.1637711   0.2459324
9 months    ki0047075b-MAL-ED          (24-28]              NA                0.1982183   0.1613326   0.2351039
9 months    ki0047075b-MAL-ED          >28                  NA                0.1995708   0.1632716   0.2358701
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487485   0.4758892
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.3959732   0.3173392   0.4746071
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.3333333   0.2403472   0.4263195
9 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.3673469   0.2321816   0.5025122
9 months    ki1000108-IRC              <=20                 NA                0.3255814   0.2264234   0.4247394
9 months    ki1000108-IRC              (20-24]              NA                0.2899408   0.2214487   0.3584330
9 months    ki1000108-IRC              (24-28]              NA                0.2592593   0.1765088   0.3420098
9 months    ki1000108-IRC              >28                  NA                0.1363636   0.0348392   0.2378881
9 months    ki1017093-NIH-Birth        <=20                 NA                0.3070175   0.2222619   0.3917732
9 months    ki1017093-NIH-Birth        (20-24]              NA                0.3680000   0.2833736   0.4526264
9 months    ki1017093-NIH-Birth        (24-28]              NA                0.3931034   0.3135232   0.4726837
9 months    ki1017093-NIH-Birth        >28                  NA                0.3553719   0.2700065   0.4407373
9 months    ki1017093b-PROVIDE         <=20                 NA                0.3333333   0.1788544   0.4878123
9 months    ki1017093b-PROVIDE         (20-24]              NA                0.1836735   0.0749098   0.2924372
9 months    ki1017093b-PROVIDE         (24-28]              NA                0.1750000   0.0568747   0.2931253
9 months    ki1017093b-PROVIDE         >28                  NA                0.2727273   0.1202929   0.4251616
9 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2535885   0.1945634   0.3126136
9 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2469136   0.1804638   0.3133633
9 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.2051282   0.1484130   0.2618434
9 months    ki1017093c-NIH-Crypto      >28                  NA                0.2214286   0.1526017   0.2902554
9 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1086957   0.0186440   0.1987473
9 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.1926606   0.1185359   0.2667852
9 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.1440000   0.0823810   0.2056190
9 months    ki1066203-TanzaniaChild2   >28                  NA                0.1184211   0.0669960   0.1698461
9 months    ki1101329-Keneba           <=20                 NA                0.1462141   0.1108206   0.1816076
9 months    ki1101329-Keneba           (20-24]              NA                0.1446701   0.1099275   0.1794126
9 months    ki1101329-Keneba           (24-28]              NA                0.1830239   0.1439810   0.2220667
9 months    ki1101329-Keneba           >28                  NA                0.2104097   0.1838182   0.2370013
9 months    ki1113344-GMS-Nepal        <=20                 NA                0.3229814   0.2506846   0.3952781
9 months    ki1113344-GMS-Nepal        (20-24]              NA                0.2765957   0.2026954   0.3504961
9 months    ki1113344-GMS-Nepal        (24-28]              NA                0.2405063   0.1738043   0.3072084
9 months    ki1113344-GMS-Nepal        >28                  NA                0.2857143   0.1928126   0.3786160
9 months    ki1126311-ZVITAMBO         <=20                 NA                0.2236287   0.1861082   0.2611492
9 months    ki1126311-ZVITAMBO         (20-24]              NA                0.2016129   0.1700244   0.2332014
9 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1800000   0.1444945   0.2155055
9 months    ki1126311-ZVITAMBO         >28                  NA                0.1682692   0.1323104   0.2042281
9 months    ki1135781-COHORTS          <=20                 NA                0.3301967   0.3032361   0.3571574
9 months    ki1135781-COHORTS          (20-24]              NA                0.2722620   0.2525244   0.2919997
9 months    ki1135781-COHORTS          (24-28]              NA                0.2673019   0.2478761   0.2867277
9 months    ki1135781-COHORTS          >28                  NA                0.3204633   0.3015180   0.3394086
9 months    ki1148112-LCNI-5           <=20                 NA                0.2777778   0.1741265   0.3814291
9 months    ki1148112-LCNI-5           (20-24]              NA                0.3606557   0.2399284   0.4813831
9 months    ki1148112-LCNI-5           (24-28]              NA                0.3333333   0.2167114   0.4499553
9 months    ki1148112-LCNI-5           >28                  NA                0.3150685   0.2083053   0.4218317
12 months   ki0047075b-MAL-ED          <=20                 NA                0.2959770   0.2480020   0.3439521
12 months   ki0047075b-MAL-ED          (20-24]              NA                0.2534060   0.2088916   0.2979204
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.2477477   0.2075800   0.2879155
12 months   ki0047075b-MAL-ED          >28                  NA                0.2835165   0.2420908   0.3249421
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.5362319   0.4184059   0.6540579
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.4797297   0.3991323   0.5603271
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.5100000   0.4118880   0.6081120
12 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.4705882   0.3334144   0.6077620
12 months   ki1000108-IRC              <=20                 NA                0.2470588   0.1552563   0.3388614
12 months   ki1000108-IRC              (20-24]              NA                0.3550296   0.2827955   0.4272637
12 months   ki1000108-IRC              (24-28]              NA                0.2777778   0.1932001   0.3623555
12 months   ki1000108-IRC              >28                  NA                0.1818182   0.0677142   0.2959222
12 months   ki1017093-NIH-Birth        <=20                 NA                0.3008850   0.2162348   0.3855351
12 months   ki1017093-NIH-Birth        (20-24]              NA                0.4297521   0.3414561   0.5180480
12 months   ki1017093-NIH-Birth        (24-28]              NA                0.3758865   0.2958583   0.4559148
12 months   ki1017093-NIH-Birth        >28                  NA                0.3859649   0.2965087   0.4754212
12 months   ki1017093b-PROVIDE         <=20                 NA                0.3636364   0.1989713   0.5283014
12 months   ki1017093b-PROVIDE         (20-24]              NA                0.2653061   0.1412835   0.3893287
12 months   ki1017093b-PROVIDE         (24-28]              NA                0.1750000   0.0568624   0.2931376
12 months   ki1017093b-PROVIDE         >28                  NA                0.3870968   0.2150697   0.5591239
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2511848   0.1926252   0.3097445
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2564103   0.1878412   0.3249793
12 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.2222222   0.1642734   0.2801711
12 months   ki1017093c-NIH-Crypto      >28                  NA                0.2411348   0.1704772   0.3117923
12 months   ki1066203-TanzaniaChild2   <=20                 NA                0.1538462   0.0404505   0.2672418
12 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.1739130   0.0963516   0.2514745
12 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.1274510   0.0626432   0.1922587
12 months   ki1066203-TanzaniaChild2   >28                  NA                0.1393443   0.0778067   0.2008818
12 months   ki1101329-Keneba           <=20                 NA                0.2176309   0.1751715   0.2600902
12 months   ki1101329-Keneba           (20-24]              NA                0.2127072   0.1705409   0.2548735
12 months   ki1101329-Keneba           (24-28]              NA                0.2377049   0.1940834   0.2813264
12 months   ki1101329-Keneba           >28                  NA                0.2843602   0.2539184   0.3148020
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.3250000   0.2523608   0.3976392
12 months   ki1113344-GMS-Nepal        (20-24]              NA                0.2907801   0.2157560   0.3658043
12 months   ki1113344-GMS-Nepal        (24-28]              NA                0.3703704   0.2959416   0.4447991
12 months   ki1113344-GMS-Nepal        >28                  NA                0.4000000   0.3013990   0.4986010
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.2518337   0.2097543   0.2939132
12 months   ki1126311-ZVITAMBO         (20-24]              NA                0.2384473   0.2025284   0.2743663
12 months   ki1126311-ZVITAMBO         (24-28]              NA                0.2371134   0.1947815   0.2794453
12 months   ki1126311-ZVITAMBO         >28                  NA                0.2250000   0.1818514   0.2681486
12 months   ki1135781-COHORTS          <=20                 NA                0.4434948   0.4134863   0.4735033
12 months   ki1135781-COHORTS          (20-24]              NA                0.3728532   0.3505435   0.3951629
12 months   ki1135781-COHORTS          (24-28]              NA                0.3602585   0.3384220   0.3820950
12 months   ki1135781-COHORTS          >28                  NA                0.4290207   0.4084586   0.4495827
12 months   ki1148112-LCNI-5           <=20                 NA                0.3692308   0.2516818   0.4867798
12 months   ki1148112-LCNI-5           (20-24]              NA                0.4406780   0.3137501   0.5676058
12 months   ki1148112-LCNI-5           (24-28]              NA                0.4576271   0.3302562   0.5849980
12 months   ki1148112-LCNI-5           >28                  NA                0.4133333   0.3016710   0.5249957
18 months   ki0047075b-MAL-ED          <=20                 NA                0.4254658   0.3714463   0.4794854
18 months   ki0047075b-MAL-ED          (20-24]              NA                0.3810888   0.3301202   0.4320575
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.3695150   0.3240373   0.4149927
18 months   ki0047075b-MAL-ED          >28                  NA                0.3795455   0.3341879   0.4249030
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6956522   0.5869360   0.8043683
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.7266667   0.6552490   0.7980843
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.6666667   0.5736815   0.7596518
18 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.6078431   0.4736662   0.7420201
18 months   ki1000108-IRC              <=20                 NA                0.3333333   0.2341545   0.4325122
18 months   ki1000108-IRC              (20-24]              NA                0.4131737   0.3384001   0.4879472
18 months   ki1000108-IRC              (24-28]              NA                0.3551402   0.2643528   0.4459276
18 months   ki1000108-IRC              >28                  NA                0.1818182   0.0677138   0.2959225
18 months   ki1017093-NIH-Birth        <=20                 NA                0.6226415   0.5302647   0.7150183
18 months   ki1017093-NIH-Birth        (20-24]              NA                0.5701754   0.4792015   0.6611494
18 months   ki1017093-NIH-Birth        (24-28]              NA                0.6230769   0.5396809   0.7064729
18 months   ki1017093-NIH-Birth        >28                  NA                0.5315315   0.4386001   0.6244630
18 months   ki1017093b-PROVIDE         <=20                 NA                0.4516129   0.2758045   0.6274213
18 months   ki1017093b-PROVIDE         (20-24]              NA                0.2954545   0.1601641   0.4307450
18 months   ki1017093b-PROVIDE         (24-28]              NA                0.3157895   0.1674709   0.4641080
18 months   ki1017093b-PROVIDE         >28                  NA                0.4642857   0.2789010   0.6496704
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2864583   0.2224582   0.3504584
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2847222   0.2109560   0.3584885
18 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.3220339   0.2531434   0.3909243
18 months   ki1017093c-NIH-Crypto      >28                  NA                0.3140496   0.2312852   0.3968140
18 months   ki1066203-TanzaniaChild2   <=20                 NA                0.2692308   0.0984022   0.4400593
18 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.3064516   0.1914727   0.4214305
18 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.2820513   0.1819918   0.3821107
18 months   ki1066203-TanzaniaChild2   >28                  NA                0.2197802   0.1345337   0.3050268
18 months   ki1101329-Keneba           <=20                 NA                0.2882353   0.2400778   0.3363928
18 months   ki1101329-Keneba           (20-24]              NA                0.2929577   0.2456020   0.3403135
18 months   ki1101329-Keneba           (24-28]              NA                0.3218391   0.2727417   0.3709364
18 months   ki1101329-Keneba           >28                  NA                0.3529412   0.3211230   0.3847594
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.5276074   0.4508966   0.6043182
18 months   ki1113344-GMS-Nepal        (20-24]              NA                0.5072464   0.4237576   0.5907352
18 months   ki1113344-GMS-Nepal        (24-28]              NA                0.5443038   0.4665766   0.6220310
18 months   ki1113344-GMS-Nepal        >28                  NA                0.5494505   0.4471311   0.6517700
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.4574468   0.3566174   0.5582762
18 months   ki1126311-ZVITAMBO         (20-24]              NA                0.5217391   0.4382982   0.6051801
18 months   ki1126311-ZVITAMBO         (24-28]              NA                0.4081633   0.3107396   0.5055869
18 months   ki1126311-ZVITAMBO         >28                  NA                0.4947368   0.3940799   0.5953938
18 months   ki1135781-COHORTS          <=20                 NA                0.6428571   0.6015870   0.6841273
18 months   ki1135781-COHORTS          (20-24]              NA                0.5991792   0.5636474   0.6347110
18 months   ki1135781-COHORTS          (24-28]              NA                0.6076135   0.5709880   0.6442389
18 months   ki1135781-COHORTS          >28                  NA                0.6465863   0.6168938   0.6762789
18 months   ki1148112-LCNI-5           <=20                 NA                0.5142857   0.3970063   0.6315651
18 months   ki1148112-LCNI-5           (20-24]              NA                0.5555556   0.4405856   0.6705255
18 months   ki1148112-LCNI-5           (24-28]              NA                0.5072464   0.3890844   0.6254084
18 months   ki1148112-LCNI-5           >28                  NA                0.4482759   0.3435987   0.5529530
24 months   ki0047075b-MAL-ED          <=20                 NA                0.3918919   0.3362603   0.4475235
24 months   ki0047075b-MAL-ED          (20-24]              NA                0.3607038   0.3097187   0.4116889
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.3672986   0.3212891   0.4133080
24 months   ki0047075b-MAL-ED          >28                  NA                0.3831776   0.3371039   0.4292512
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.7042254   0.5979238   0.8105269
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.7333333   0.6624699   0.8041967
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.6732673   0.5816744   0.7648603
24 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.7600000   0.6414613   0.8785387
24 months   ki1000108-IRC              <=20                 NA                0.4367816   0.3324320   0.5411312
24 months   ki1000108-IRC              (20-24]              NA                0.4235294   0.3491615   0.4978973
24 months   ki1000108-IRC              (24-28]              NA                0.4166667   0.3235729   0.5097604
24 months   ki1000108-IRC              >28                  NA                0.3409091   0.2006777   0.4811405
24 months   ki1017093-NIH-Birth        <=20                 NA                0.5408163   0.4420379   0.6395948
24 months   ki1017093-NIH-Birth        (20-24]              NA                0.5420561   0.4475426   0.6365695
24 months   ki1017093-NIH-Birth        (24-28]              NA                0.5798319   0.4910456   0.6686183
24 months   ki1017093-NIH-Birth        >28                  NA                0.5533981   0.4572772   0.6495189
24 months   ki1017093b-PROVIDE         <=20                 NA                0.4242424   0.2550502   0.5934346
24 months   ki1017093b-PROVIDE         (20-24]              NA                0.2291667   0.1098652   0.3484681
24 months   ki1017093b-PROVIDE         (24-28]              NA                0.2631579   0.1226781   0.4036377
24 months   ki1017093b-PROVIDE         >28                  NA                0.4666667   0.2875432   0.6457901
24 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2222222   0.1581404   0.2863041
24 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2956522   0.2121676   0.3791367
24 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.2657343   0.1932651   0.3382034
24 months   ki1017093c-NIH-Crypto      >28                  NA                0.2553191   0.1670856   0.3435527
24 months   ki1101329-Keneba           <=20                 NA                0.3322476   0.2795435   0.3849516
24 months   ki1101329-Keneba           (20-24]              NA                0.3196203   0.2681894   0.3710512
24 months   ki1101329-Keneba           (24-28]              NA                0.3108974   0.2595229   0.3622720
24 months   ki1101329-Keneba           >28                  NA                0.3517330   0.3181909   0.3852750
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.4452055   0.3645092   0.5259018
24 months   ki1113344-GMS-Nepal        (20-24]              NA                0.4523810   0.3653868   0.5393751
24 months   ki1113344-GMS-Nepal        (24-28]              NA                0.4571429   0.3745413   0.5397445
24 months   ki1113344-GMS-Nepal        >28                  NA                0.4252874   0.3212976   0.5292771
24 months   ki1126311-ZVITAMBO         <=20                 NA                0.6296296   0.4466903   0.8125689
24 months   ki1126311-ZVITAMBO         (20-24]              NA                0.5609756   0.4084114   0.7135398
24 months   ki1126311-ZVITAMBO         (24-28]              NA                0.5454545   0.3364841   0.7544249
24 months   ki1126311-ZVITAMBO         >28                  NA                0.6153846   0.4275705   0.8031987
24 months   ki1135781-COHORTS          <=20                 NA                0.6525591   0.6232782   0.6818399
24 months   ki1135781-COHORTS          (20-24]              NA                0.5368664   0.5134083   0.5603244
24 months   ki1135781-COHORTS          (24-28]              NA                0.5157835   0.4925263   0.5390407
24 months   ki1135781-COHORTS          >28                  NA                0.5900563   0.5691779   0.6109346
24 months   ki1148112-LCNI-5           <=20                 NA                0.3666667   0.2444882   0.4888451
24 months   ki1148112-LCNI-5           (20-24]              NA                0.5178571   0.3867226   0.6489917
24 months   ki1148112-LCNI-5           (24-28]              NA                0.5333333   0.4068464   0.6598202
24 months   ki1148112-LCNI-5           >28                  NA                0.4189189   0.3062807   0.5315572


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1321762   0.1311327   0.1332198
Birth       ki1101329-Keneba           NA                   NA                0.0532122   0.0525042   0.0539202
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043908   0.1040444   0.1047373
Birth       ki1135781-COHORTS          NA                   NA                0.0934900   0.0932126   0.0937673
3 months    ki0047075b-MAL-ED          NA                   NA                0.1542793   0.1527362   0.1558224
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2418684   0.2553692
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2206495   0.2265249
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3717525   0.4117526
3 months    ki1017093-NIH-Birth        NA                   NA                0.2271127   0.2249928   0.2292325
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2129307   0.2156407
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0680628   0.0659051   0.0702205
3 months    ki1101329-Keneba           NA                   NA                0.1435143   0.1431230   0.1439055
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1443869   0.1498337
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1724746   0.1718464   0.1731029
3 months    ki1135781-COHORTS          NA                   NA                0.1532855   0.1529062   0.1536648
6 months    ki0047075b-MAL-ED          NA                   NA                0.1623377   0.1610346   0.1636408
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2975054   0.3041206
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2420025   0.2493980
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4823016   0.5176984
6 months    ki1017093-NIH-Birth        NA                   NA                0.2672897   0.2636073   0.2709721
6 months    ki1017093b-PROVIDE         NA                   NA                0.1830065   0.1748693   0.1911437
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2068270   0.2127534
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0896414   0.0877156   0.0915673
6 months    ki1101329-Keneba           NA                   NA                0.1408654   0.1397476   0.1419832
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2092653   0.2134701
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1634944   0.1628812   0.1641075
6 months    ki1135781-COHORTS          NA                   NA                0.2159485   0.2153980   0.2164990
6 months    ki1148112-LCNI-5           NA                   NA                0.3702624   0.3660459   0.3744789
9 months    ki0047075b-MAL-ED          NA                   NA                0.2063492   0.2058059   0.2068925
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3662389   0.3714661
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2676062   0.2778483
9 months    ki1017093-NIH-Birth        NA                   NA                0.3584158   0.3557013   0.3611304
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2240060   0.2443485
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2307990   0.2337902
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1435185   0.1405932   0.1464439
9 months    ki1101329-Keneba           NA                   NA                0.1808459   0.1795794   0.1821124
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2786722   0.2839412
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1948980   0.1939955   0.1958004
9 months    ki1135781-COHORTS          NA                   NA                0.2951128   0.2944956   0.2957299
9 months    ki1148112-LCNI-5           NA                   NA                0.3197026   0.3161106   0.3232946
12 months   ki0047075b-MAL-ED          NA                   NA                0.2695167   0.2685461   0.2704874
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4948809   0.4996843
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2873873   0.2988196
12 months   ki1017093-NIH-Birth        NA                   NA                0.3742331   0.3702270   0.3782393
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2745432   0.3006202
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2412168   0.2432025
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1464789   0.1446080   0.1483497
12 months   ki1101329-Keneba           NA                   NA                0.2496124   0.2482030   0.2510219
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3390222   0.3455657
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2385159   0.2380853   0.2389465
12 months   ki1135781-COHORTS          NA                   NA                0.3982135   0.3974094   0.3990176
12 months   ki1148112-LCNI-5           NA                   NA                0.4186047   0.4145833   0.4226260
18 months   ki0047075b-MAL-ED          NA                   NA                0.3866580   0.3856380   0.3876781
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6842236   0.6924702
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3488319   0.3622792
18 months   ki1017093-NIH-Birth        NA                   NA                0.5878525   0.5843497   0.5913553
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3562287   0.3813600
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2999579   0.3025658
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2645914   0.2602980   0.2688849
18 months   ki1101329-Keneba           NA                   NA                0.3246073   0.3233485   0.3258662
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5295808   0.5322374
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4752941   0.4711511   0.4794371
18 months   ki1135781-COHORTS          NA                   NA                0.6250000   0.6242299   0.6257701
18 months   ki1148112-LCNI-5           NA                   NA                0.5033557   0.4988414   0.5078701
24 months   ki0047075b-MAL-ED          NA                   NA                0.3752522   0.3746513   0.3758531
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7119965   0.7181111
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4130406   0.4182552
24 months   ki1017093-NIH-Birth        NA                   NA                0.5550351   0.5535021   0.5565681
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3126349   0.3450832
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2544599   0.2591588
24 months   ki1101329-Keneba           NA                   NA                0.3348891   0.3340996   0.3356787
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4459345   0.4478531
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5862069   0.5799562   0.5924576
24 months   ki1135781-COHORTS          NA                   NA                0.5659357   0.5648034   0.5670680
24 months   ki1148112-LCNI-5           NA                   NA                0.4560000   0.4475624   0.4644376


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          (20-24]              <=20              0.8352230   0.5897606   1.1828485
Birth       ki0047075b-MAL-ED          (24-28]              <=20              0.7456140   0.5227108   1.0635715
Birth       ki0047075b-MAL-ED          >28                  <=20              0.6533558   0.4488173   0.9511083
Birth       ki1101329-Keneba           (20-24]              <=20              0.8056522   0.4443058   1.4608754
Birth       ki1101329-Keneba           (24-28]              <=20              0.4935849   0.2413452   1.0094508
Birth       ki1101329-Keneba           >28                  <=20              0.5830609   0.3486508   0.9750731
Birth       ki1126311-ZVITAMBO         (20-24]              <=20              1.0521755   0.8205730   1.3491466
Birth       ki1126311-ZVITAMBO         (24-28]              <=20              0.8913830   0.6680765   1.1893302
Birth       ki1126311-ZVITAMBO         >28                  <=20              0.8046188   0.5921016   1.0934127
Birth       ki1135781-COHORTS          (20-24]              <=20              0.7685641   0.6318619   0.9348415
Birth       ki1135781-COHORTS          (24-28]              <=20              0.7367715   0.6042698   0.8983277
Birth       ki1135781-COHORTS          >28                  <=20              0.6814710   0.5600960   0.8291484
3 months    ki0047075b-MAL-ED          (20-24]              <=20              0.6646112   0.4917878   0.8981679
3 months    ki0047075b-MAL-ED          (24-28]              <=20              0.6268019   0.4667256   0.8417807
3 months    ki0047075b-MAL-ED          >28                  <=20              0.6102400   0.4542302   0.8198331
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.6281379   0.4069480   0.9695520
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.7040816   0.4437845   1.1170534
3 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              0.3864000   0.1814332   0.8229199
3 months    ki1000108-IRC              (20-24]              <=20              0.7799020   0.5002985   1.2157682
3 months    ki1000108-IRC              (24-28]              <=20              0.6967593   0.4170547   1.1640522
3 months    ki1000108-IRC              >28                  <=20              0.7500000   0.3823275   1.4712518
3 months    ki1000304b-SAS-FoodSuppl   (20-24]              <=20              0.8169935   0.3296043   2.0250898
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=20              1.4264264   0.7729615   2.6323335
3 months    ki1000304b-SAS-FoodSuppl   >28                  <=20              0.7716049   0.3091338   1.9259433
3 months    ki1017093-NIH-Birth        (20-24]              <=20              1.2692308   0.7932787   2.0307450
3 months    ki1017093-NIH-Birth        (24-28]              <=20              1.3662420   0.8684083   2.1494696
3 months    ki1017093-NIH-Birth        >28                  <=20              1.3345588   0.8353411   2.1321196
3 months    ki1017093c-NIH-Crypto      (20-24]              <=20              0.9383070   0.6444127   1.3662364
3 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.9099204   0.6360719   1.3016691
3 months    ki1017093c-NIH-Crypto      >28                  <=20              0.7717865   0.5055271   1.1782837
3 months    ki1066203-TanzaniaChild2   (20-24]              <=20              0.9508042   0.4061814   2.2256767
3 months    ki1066203-TanzaniaChild2   (24-28]              <=20              0.5284838   0.2050588   1.3620248
3 months    ki1066203-TanzaniaChild2   >28                  <=20              0.3988096   0.1502232   1.0587520
3 months    ki1101329-Keneba           (20-24]              <=20              0.8771818   0.6405843   1.2011657
3 months    ki1101329-Keneba           (24-28]              <=20              0.8160945   0.5836749   1.1410636
3 months    ki1101329-Keneba           >28                  <=20              0.8963649   0.6866620   1.1701100
3 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.6932337   0.4164793   1.1538941
3 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.6047265   0.3590038   1.0186359
3 months    ki1113344-GMS-Nepal        >28                  <=20              0.6134068   0.3324018   1.1319670
3 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.8612894   0.6810314   1.0892588
3 months    ki1126311-ZVITAMBO         (24-28]              <=20              0.8265356   0.6385217   1.0699104
3 months    ki1126311-ZVITAMBO         >28                  <=20              0.7888675   0.6050585   1.0285152
3 months    ki1135781-COHORTS          (20-24]              <=20              0.7812987   0.6691547   0.9122369
3 months    ki1135781-COHORTS          (24-28]              <=20              0.7630239   0.6531236   0.8914168
3 months    ki1135781-COHORTS          >28                  <=20              0.9532278   0.8253324   1.1009422
6 months    ki0047075b-MAL-ED          (20-24]              <=20              0.8491371   0.6315915   1.1416141
6 months    ki0047075b-MAL-ED          (24-28]              <=20              0.6216993   0.4540662   0.8512196
6 months    ki0047075b-MAL-ED          >28                  <=20              0.7713559   0.5766493   1.0318055
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.7965101   0.5326018   1.1911869
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.7452000   0.4752158   1.1685701
6 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              0.8658824   0.5182502   1.4466993
6 months    ki1000108-IRC              (20-24]              <=20              1.0398765   0.6789013   1.5927840
6 months    ki1000108-IRC              (24-28]              <=20              0.7616747   0.4565156   1.2708184
6 months    ki1000108-IRC              >28                  <=20              0.6798419   0.3313525   1.3948439
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              <=20              1.3575758   0.6989647   2.6367741
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=20              1.5272727   0.8928290   2.6125518
6 months    ki1000304b-SAS-FoodSuppl   >28                  <=20              1.1313131   0.5642801   2.2681456
6 months    ki1017093-NIH-Birth        (20-24]              <=20              1.4312977   0.9080098   2.2561575
6 months    ki1017093-NIH-Birth        (24-28]              <=20              1.4930556   0.9617820   2.3177964
6 months    ki1017093-NIH-Birth        >28                  <=20              1.6149871   1.0373414   2.5142960
6 months    ki1017093b-PROVIDE         (20-24]              <=20              0.8876812   0.3261832   2.4157522
6 months    ki1017093b-PROVIDE         (24-28]              <=20              0.8750000   0.3092484   2.4757603
6 months    ki1017093b-PROVIDE         >28                  <=20              1.6406250   0.6551097   4.1087016
6 months    ki1017093c-NIH-Crypto      (20-24]              <=20              1.2113470   0.8475858   1.7312246
6 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.7166667   0.4784702   1.0734444
6 months    ki1017093c-NIH-Crypto      >28                  <=20              0.8577128   0.5628590   1.3070256
6 months    ki1066203-TanzaniaChild2   (20-24]              <=20              0.6404199   0.2322009   1.7663055
6 months    ki1066203-TanzaniaChild2   (24-28]              <=20              1.2257683   0.5075221   2.9604780
6 months    ki1066203-TanzaniaChild2   >28                  <=20              0.8227360   0.3306246   2.0473206
6 months    ki1101329-Keneba           (20-24]              <=20              0.9138545   0.6245318   1.3372098
6 months    ki1101329-Keneba           (24-28]              <=20              1.0331633   0.7102041   1.5029853
6 months    ki1101329-Keneba           >28                  <=20              1.4084378   1.0435330   1.9009433
6 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.8020050   0.5195551   1.2380054
6 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.7845701   0.5123452   1.2014367
6 months    ki1113344-GMS-Nepal        >28                  <=20              1.0193906   0.6488917   1.6014339
6 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.8773361   0.6751803   1.1400195
6 months    ki1126311-ZVITAMBO         (24-28]              <=20              1.0299155   0.7834760   1.3538717
6 months    ki1126311-ZVITAMBO         >28                  <=20              0.8292098   0.6174799   1.1135407
6 months    ki1135781-COHORTS          (20-24]              <=20              0.7629519   0.6709599   0.8675566
6 months    ki1135781-COHORTS          (24-28]              <=20              0.7718755   0.6791886   0.8772113
6 months    ki1135781-COHORTS          >28                  <=20              0.9484479   0.8425077   1.0677094
6 months    ki1148112-LCNI-5           (20-24]              <=20              1.1289869   0.7320972   1.7410411
6 months    ki1148112-LCNI-5           (24-28]              <=20              1.2370192   0.8113477   1.8860182
6 months    ki1148112-LCNI-5           >28                  <=20              1.3355573   0.8992918   1.9834644
9 months    ki0047075b-MAL-ED          (20-24]              <=20              0.9013477   0.6825149   1.1903443
9 months    ki0047075b-MAL-ED          (24-28]              <=20              0.8721604   0.6672073   1.1400710
9 months    ki0047075b-MAL-ED          >28                  <=20              0.8781116   0.6737110   1.1445263
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.0928859   0.7540904   1.5838944
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9200000   0.6047197   1.3996566
9 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              1.0138776   0.6252637   1.6440226
9 months    ki1000108-IRC              (20-24]              <=20              0.8905325   0.6057012   1.3093059
9 months    ki1000108-IRC              (24-28]              <=20              0.7962963   0.5122442   1.2378624
9 months    ki1000108-IRC              >28                  <=20              0.4188312   0.1873674   0.9362331
9 months    ki1017093-NIH-Birth        (20-24]              <=20              1.1986286   0.8368446   1.7168188
9 months    ki1017093-NIH-Birth        (24-28]              <=20              1.2803941   0.9092224   1.8030892
9 months    ki1017093-NIH-Birth        >28                  <=20              1.1574970   0.8027748   1.6689604
9 months    ki1017093b-PROVIDE         (20-24]              <=20              0.5510204   0.2597773   1.1687839
9 months    ki1017093b-PROVIDE         (24-28]              <=20              0.5250000   0.2315089   1.1905591
9 months    ki1017093b-PROVIDE         >28                  <=20              0.8181818   0.3958434   1.6911272
9 months    ki1017093c-NIH-Crypto      (20-24]              <=20              0.9736781   0.6821620   1.3897710
9 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.8089018   0.5635528   1.1610662
9 months    ki1017093c-NIH-Crypto      >28                  <=20              0.8731806   0.5921867   1.2875067
9 months    ki1066203-TanzaniaChild2   (20-24]              <=20              1.7724771   0.7110053   4.4186377
9 months    ki1066203-TanzaniaChild2   (24-28]              <=20              1.3248000   0.5214217   3.3659798
9 months    ki1066203-TanzaniaChild2   >28                  <=20              1.0894737   0.4275465   2.7761961
9 months    ki1101329-Keneba           (20-24]              <=20              0.9894398   0.7035632   1.3914758
9 months    ki1101329-Keneba           (24-28]              <=20              1.2517526   0.9065549   1.7283945
9 months    ki1101329-Keneba           >28                  <=20              1.4390524   1.0951743   1.8909060
9 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.8563830   0.6043567   1.2135082
9 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.7446446   0.5213933   1.0634882
9 months    ki1113344-GMS-Nepal        >28                  <=20              0.8846154   0.5960937   1.3127876
9 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.9015520   0.7166275   1.1341960
9 months    ki1126311-ZVITAMBO         (24-28]              <=20              0.8049057   0.6212712   1.0428185
9 months    ki1126311-ZVITAMBO         >28                  <=20              0.7524492   0.5734325   0.9873521
9 months    ki1135781-COHORTS          (20-24]              <=20              0.8245448   0.7392545   0.9196754
9 months    ki1135781-COHORTS          (24-28]              <=20              0.8095231   0.7257006   0.9030276
9 months    ki1135781-COHORTS          >28                  <=20              0.9705223   0.8774578   1.0734574
9 months    ki1148112-LCNI-5           (20-24]              <=20              1.2983607   0.7864812   2.1433956
9 months    ki1148112-LCNI-5           (24-28]              <=20              1.2000000   0.7195070   2.0013704
9 months    ki1148112-LCNI-5           >28                  <=20              1.1342466   0.6851784   1.8776355
12 months   ki0047075b-MAL-ED          (20-24]              <=20              0.8561678   0.6741448   1.0873381
12 months   ki0047075b-MAL-ED          (24-28]              <=20              0.8370506   0.6655574   1.0527324
12 months   ki0047075b-MAL-ED          >28                  <=20              0.9579004   0.7700981   1.1915016
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.8946311   0.6784511   1.1796942
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9510811   0.7102061   1.2736518
12 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              0.8775835   0.6091946   1.2642147
12 months   ki1000108-IRC              (20-24]              <=20              1.4370245   0.9407640   2.1950663
12 months   ki1000108-IRC              (24-28]              <=20              1.1243386   0.6954461   1.8177358
12 months   ki1000108-IRC              >28                  <=20              0.7359307   0.3548900   1.5260900
12 months   ki1017093-NIH-Birth        (20-24]              <=20              1.4282936   1.0081405   2.0235499
12 months   ki1017093-NIH-Birth        (24-28]              <=20              1.2492699   0.8778697   1.7777983
12 months   ki1017093-NIH-Birth        >28                  <=20              1.2827657   0.8909258   1.8469417
12 months   ki1017093b-PROVIDE         (20-24]              <=20              0.7295918   0.3805637   1.3987258
12 months   ki1017093b-PROVIDE         (24-28]              <=20              0.4812500   0.2134720   1.0849271
12 months   ki1017093b-PROVIDE         >28                  <=20              1.0645161   0.5644257   2.0076950
12 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.0208031   0.7159220   1.4555203
12 months   ki1017093c-NIH-Crypto      (24-28]              <=20              0.8846960   0.6235664   1.2551784
12 months   ki1017093c-NIH-Crypto      >28                  <=20              0.9599893   0.6601534   1.3960079
12 months   ki1066203-TanzaniaChild2   (20-24]              <=20              1.1304348   0.4776433   2.6753917
12 months   ki1066203-TanzaniaChild2   (24-28]              <=20              0.8284314   0.3383496   2.0283710
12 months   ki1066203-TanzaniaChild2   >28                  <=20              0.9057377   0.3835627   2.1387918
12 months   ki1101329-Keneba           (20-24]              <=20              0.9773760   0.7400615   1.2907899
12 months   ki1101329-Keneba           (24-28]              <=20              1.0922391   0.8355939   1.4277105
12 months   ki1101329-Keneba           >28                  <=20              1.3066171   1.0459255   1.6322846
12 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.8947081   0.6359640   1.2587232
12 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.1396011   0.8437614   1.5391682
12 months   ki1113344-GMS-Nepal        >28                  <=20              1.2307692   0.8824052   1.7166637
12 months   ki1126311-ZVITAMBO         (20-24]              <=20              0.9468442   0.7560935   1.1857184
12 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.9415474   0.7373029   1.2023709
12 months   ki1126311-ZVITAMBO         >28                  <=20              0.8934466   0.6927936   1.1522145
12 months   ki1135781-COHORTS          (20-24]              <=20              0.8407161   0.7681069   0.9201890
12 months   ki1135781-COHORTS          (24-28]              <=20              0.8123173   0.7417769   0.8895658
12 months   ki1135781-COHORTS          >28                  <=20              0.9673635   0.8903868   1.0509951
12 months   ki1148112-LCNI-5           (20-24]              <=20              1.1935028   0.7769134   1.8334721
12 months   ki1148112-LCNI-5           (24-28]              <=20              1.2394068   0.8120123   1.8917561
12 months   ki1148112-LCNI-5           >28                  <=20              1.1194444   0.7373425   1.6995573
18 months   ki0047075b-MAL-ED          (20-24]              <=20              0.8956978   0.7448558   1.0770872
18 months   ki0047075b-MAL-ED          (24-28]              <=20              0.8684951   0.7277342   1.0364826
18 months   ki0047075b-MAL-ED          >28                  <=20              0.8920703   0.7493335   1.0619964
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.0445833   0.8684926   1.2563773
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9583333   0.7772224   1.1816473
18 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              0.8737745   0.6667123   1.1451444
18 months   ki1000108-IRC              (20-24]              <=20              1.2395210   0.8750039   1.7558919
18 months   ki1000108-IRC              (24-28]              <=20              1.0654206   0.7197118   1.5771881
18 months   ki1000108-IRC              >28                  <=20              0.5454545   0.2723494   1.0924226
18 months   ki1017093-NIH-Birth        (20-24]              <=20              0.9157363   0.7364597   1.1386543
18 months   ki1017093-NIH-Birth        (24-28]              <=20              1.0006993   0.8194548   1.2220309
18 months   ki1017093-NIH-Birth        >28                  <=20              0.8536719   0.6787444   1.0736820
18 months   ki1017093b-PROVIDE         (20-24]              <=20              0.6542208   0.3586780   1.1932842
18 months   ki1017093b-PROVIDE         (24-28]              <=20              0.6992481   0.3799241   1.2869622
18 months   ki1017093b-PROVIDE         >28                  <=20              1.0280612   0.5886165   1.7955832
18 months   ki1017093c-NIH-Crypto      (20-24]              <=20              0.9939394   0.7059656   1.3993819
18 months   ki1017093c-NIH-Crypto      (24-28]              <=20              1.1241911   0.8250954   1.5317085
18 months   ki1017093c-NIH-Crypto      >28                  <=20              1.0963186   0.7760486   1.5487617
18 months   ki1066203-TanzaniaChild2   (20-24]              <=20              1.1382488   0.5446322   2.3788721
18 months   ki1066203-TanzaniaChild2   (24-28]              <=20              1.0476190   0.5064014   2.1672642
18 months   ki1066203-TanzaniaChild2   >28                  <=20              0.8163265   0.3880547   1.7172555
18 months   ki1101329-Keneba           (20-24]              <=20              1.0163840   0.8055552   1.2823907
18 months   ki1101329-Keneba           (24-28]              <=20              1.1165846   0.8905011   1.4000669
18 months   ki1101329-Keneba           >28                  <=20              1.2244898   1.0127575   1.4804879
18 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.9614088   0.7718472   1.1975257
18 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.0316456   0.8414425   1.2648429
18 months   ki1113344-GMS-Nepal        >28                  <=20              1.0414005   0.8222660   1.3189344
18 months   ki1126311-ZVITAMBO         (20-24]              <=20              1.1405460   0.8686472   1.4975530
18 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.8922639   0.6447536   1.2347893
18 months   ki1126311-ZVITAMBO         >28                  <=20              1.0815177   0.8012372   1.4598431
18 months   ki1135781-COHORTS          (20-24]              <=20              0.9320565   0.8540571   1.0171795
18 months   ki1135781-COHORTS          (24-28]              <=20              0.9451765   0.8655028   1.0321846
18 months   ki1135781-COHORTS          >28                  <=20              1.0058010   0.9294638   1.0884078
18 months   ki1148112-LCNI-5           (20-24]              <=20              1.0802469   0.7939334   1.4698126
18 months   ki1148112-LCNI-5           (24-28]              <=20              0.9863124   0.7119336   1.3664366
18 months   ki1148112-LCNI-5           >28                  <=20              0.8716475   0.6289139   1.2080658
24 months   ki0047075b-MAL-ED          (20-24]              <=20              0.9204166   0.7533265   1.1245679
24 months   ki0047075b-MAL-ED          (24-28]              <=20              0.9372446   0.7755886   1.1325946
24 months   ki0047075b-MAL-ED          >28                  <=20              0.9777635   0.8117816   1.1776830
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.0413333   0.8704654   1.2457417
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9560396   0.7802331   1.1714598
24 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              1.0792000   0.8686332   1.3408107
24 months   ki1000108-IRC              (20-24]              <=20              0.9696594   0.7208651   1.3043209
24 months   ki1000108-IRC              (24-28]              <=20              0.9539474   0.6878069   1.3230683
24 months   ki1000108-IRC              >28                  <=20              0.7805024   0.4850480   1.2559252
24 months   ki1017093-NIH-Birth        (20-24]              <=20              1.0022924   0.7786287   1.2902042
24 months   ki1017093-NIH-Birth        (24-28]              <=20              1.0721421   0.8447762   1.3607020
24 months   ki1017093-NIH-Birth        >28                  <=20              1.0232643   0.7952876   1.3165928
24 months   ki1017093b-PROVIDE         (20-24]              <=20              0.5401786   0.2803697   1.0407434
24 months   ki1017093b-PROVIDE         (24-28]              <=20              0.6203008   0.3185752   1.2077935
24 months   ki1017093b-PROVIDE         >28                  <=20              1.1000000   0.6324175   1.9132930
24 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.3304348   0.8886140   1.9919299
24 months   ki1017093c-NIH-Crypto      (24-28]              <=20              1.1958042   0.8040612   1.7784064
24 months   ki1017093c-NIH-Crypto      >28                  <=20              1.1489362   0.7325266   1.8020564
24 months   ki1101329-Keneba           (20-24]              <=20              0.9619943   0.7674342   1.2058792
24 months   ki1101329-Keneba           (24-28]              <=20              0.9357403   0.7441749   1.1766185
24 months   ki1101329-Keneba           >28                  <=20              1.0586473   0.8797700   1.2738945
24 months   ki1113344-GMS-Nepal        (20-24]              <=20              1.0161172   0.7801470   1.3234611
24 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.0268132   0.7949503   1.3263034
24 months   ki1113344-GMS-Nepal        >28                  <=20              0.9552608   0.7045876   1.2951168
24 months   ki1126311-ZVITAMBO         (20-24]              <=20              0.8909613   0.5984405   1.3264676
24 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.8663102   0.5356151   1.4011802
24 months   ki1126311-ZVITAMBO         >28                  <=20              0.9773756   0.6412926   1.4895899
24 months   ki1135781-COHORTS          (20-24]              <=20              0.8227092   0.7727628   0.8758838
24 months   ki1135781-COHORTS          (24-28]              <=20              0.7904013   0.7416875   0.8423147
24 months   ki1135781-COHORTS          >28                  <=20              0.9042190   0.8539972   0.9573942
24 months   ki1148112-LCNI-5           (20-24]              <=20              1.4123377   0.9293512   2.1463337
24 months   ki1148112-LCNI-5           (24-28]              <=20              1.4545455   0.9662790   2.1895359
24 months   ki1148112-LCNI-5           >28                  <=20              1.1425061   0.7445740   1.7531102


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=20                 NA                -0.0325296   -0.0719826    0.0069233
Birth       ki1101329-Keneba           <=20                 NA                -0.0232404   -0.0520589    0.0055781
Birth       ki1126311-ZVITAMBO         <=20                 NA                -0.0049486   -0.0255962    0.0156990
Birth       ki1135781-COHORTS          <=20                 NA                -0.0278618   -0.0456018   -0.0101218
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.0622156   -0.1032366   -0.0211945
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1137001   -0.2274725    0.0000724
3 months    ki1000108-IRC              <=20                 NA                -0.0554825   -0.1504433    0.0394782
3 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.0317526   -0.1584359    0.2219411
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.0452945   -0.0205944    0.1111834
3 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0196592   -0.0759104    0.0365919
3 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0364148   -0.1097526    0.0369230
3 months    ki1101329-Keneba           <=20                 NA                -0.0160363   -0.0500694    0.0179968
3 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0504945   -0.1110012    0.0100123
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0256735   -0.0593065    0.0079594
3 months    ki1135781-COHORTS          <=20                 NA                -0.0242425   -0.0447448   -0.0037403
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.0409144   -0.0820066    0.0001778
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0615058   -0.1751231    0.0521114
6 months    ki1000108-IRC              <=20                 NA                -0.0217416   -0.1154777    0.0719945
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.1071429   -0.0755632    0.2898489
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.0752897    0.0060793    0.1445001
6 months    ki1017093b-PROVIDE         <=20                 NA                 0.0115780   -0.1139553    0.1371112
6 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0134656   -0.0692467    0.0423155
6 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0087192   -0.0835512    0.0661127
6 months    ki1101329-Keneba           <=20                 NA                 0.0198777   -0.0119102    0.0516656
6 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0261323   -0.0921631    0.0398984
6 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0122632   -0.0458067    0.0212803
6 months    ki1135781-COHORTS          <=20                 NA                -0.0354349   -0.0593484   -0.0115214
6 months    ki1148112-LCNI-5           <=20                 NA                 0.0570094   -0.0430080    0.1570267
9 months    ki0047075b-MAL-ED          <=20                 NA                -0.0209235   -0.0647190    0.0228720
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0065336   -0.1070668    0.1201340
9 months    ki1000108-IRC              <=20                 NA                -0.0528541   -0.1521442    0.0464360
9 months    ki1017093-NIH-Birth        <=20                 NA                 0.0513983   -0.0334008    0.1361974
9 months    ki1017093b-PROVIDE         <=20                 NA                -0.0991561   -0.2539696    0.0556573
9 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0212939   -0.0803379    0.0377501
9 months    ki1066203-TanzaniaChild2   <=20                 NA                 0.0348229   -0.0552763    0.1249220
9 months    ki1101329-Keneba           <=20                 NA                 0.0346318   -0.0007844    0.0700479
9 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0416747   -0.1140194    0.0306701
9 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0287307   -0.0662621    0.0088006
9 months    ki1135781-COHORTS          <=20                 NA                -0.0350840   -0.0620517   -0.0081163
9 months    ki1148112-LCNI-5           <=20                 NA                 0.0419248   -0.0617887    0.1456383
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.0264603   -0.0744452    0.0215246
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0389493   -0.1567998    0.0789012
12 months   ki1000108-IRC              <=20                 NA                 0.0460446   -0.0459357    0.1380250
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.0733482   -0.0113968    0.1580931
12 months   ki1017093b-PROVIDE         <=20                 NA                -0.0760547   -0.2412351    0.0891258
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0089752   -0.0675433    0.0495929
12 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0073673   -0.1207783    0.1060438
12 months   ki1101329-Keneba           <=20                 NA                 0.0319815   -0.0105012    0.0744643
12 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0172939   -0.0554190    0.0900068
12 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0133178   -0.0553995    0.0287638
12 months   ki1135781-COHORTS          <=20                 NA                -0.0452813   -0.0753005   -0.0152620
12 months   ki1148112-LCNI-5           <=20                 NA                 0.0493739   -0.0682439    0.1669916
18 months   ki0047075b-MAL-ED          <=20                 NA                -0.0388078   -0.0928370    0.0152214
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0073053   -0.1160996    0.1014890
18 months   ki1000108-IRC              <=20                 NA                 0.0222222   -0.0771843    0.1216287
18 months   ki1017093-NIH-Birth        <=20                 NA                -0.0347890   -0.1272322    0.0576541
18 months   ki1017093b-PROVIDE         <=20                 NA                -0.0828186   -0.2590754    0.0934383
18 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0148035   -0.0492099    0.0788169
18 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0046393   -0.1755218    0.1662432
18 months   ki1101329-Keneba           <=20                 NA                 0.0363720   -0.0118019    0.0845460
18 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0033017   -0.0734206    0.0800240
18 months   ki1126311-ZVITAMBO         <=20                 NA                 0.0178473   -0.0830672    0.1187618
18 months   ki1135781-COHORTS          <=20                 NA                -0.0178571   -0.0591344    0.0234201
18 months   ki1148112-LCNI-5           <=20                 NA                -0.0109300   -0.1282962    0.1064362
24 months   ki0047075b-MAL-ED          <=20                 NA                -0.0166397   -0.0722746    0.0389952
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0108284   -0.0955171    0.1171740
24 months   ki1000108-IRC              <=20                 NA                -0.0211337   -0.1255158    0.0832484
24 months   ki1017093-NIH-Birth        <=20                 NA                 0.0142188   -0.0845716    0.1130092
24 months   ki1017093b-PROVIDE         <=20                 NA                -0.0953834   -0.2653516    0.0745849
24 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0345871   -0.0295378    0.0987120
24 months   ki1101329-Keneba           <=20                 NA                 0.0026416   -0.0500684    0.0553516
24 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0016883   -0.0790137    0.0823903
24 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0434227   -0.2264688    0.1396233
24 months   ki1135781-COHORTS          <=20                 NA                -0.0866233   -0.1159261   -0.0573206
24 months   ki1148112-LCNI-5           <=20                 NA                 0.0893333   -0.0331361    0.2118028


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=20                 NA                -0.2461081   -0.5834524    0.0193671
Birth       ki1101329-Keneba           <=20                 NA                -0.4367495   -1.0947848    0.0145770
Birth       ki1126311-ZVITAMBO         <=20                 NA                -0.0474045   -0.2651078    0.1328358
Birth       ki1135781-COHORTS          <=20                 NA                -0.2980192   -0.5023611   -0.1214706
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.4032659   -0.6962337   -0.1608985
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.4573269   -0.9961822   -0.0639318
3 months    ki1000108-IRC              <=20                 NA                -0.2481472   -0.7542246    0.1119316
3 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.0810526   -0.5578715    0.4579371
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.1994362   -0.1501386    0.4427608
3 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0917431   -0.3885152    0.1415989
3 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.5350172   -2.0984470    0.2395294
3 months    ki1101329-Keneba           <=20                 NA                -0.1117401   -0.3760759    0.1018184
3 months    ki1113344-GMS-Nepal        <=20                 NA                -0.3432421   -0.8249203    0.0112996
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.1488538   -0.3613960    0.0305060
3 months    ki1135781-COHORTS          <=20                 NA                -0.1581529   -0.2999432   -0.0318282
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.2520325   -0.5326521   -0.0227927
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.2044653   -0.6481924    0.1198014
6 months    ki1000108-IRC              <=20                 NA                -0.0884884   -0.5454759    0.2333708
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.2142857   -0.2499107    0.5060872
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.2816783   -0.0298219    0.4989561
6 months    ki1017093b-PROVIDE         <=20                 NA                 0.0632653   -0.9478648    0.5495212
6 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0641860   -0.3663045    0.1711277
6 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0972678   -1.3482405    0.4872772
6 months    ki1101329-Keneba           <=20                 NA                 0.1411115   -0.1169233    0.3395344
6 months    ki1113344-GMS-Nepal        <=20                 NA                -0.1236345   -0.4838345    0.1491272
6 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0750068   -0.3010648    0.1117740
6 months    ki1135781-COHORTS          <=20                 NA                -0.1640896   -0.2802762   -0.0584471
6 months    ki1148112-LCNI-5           <=20                 NA                 0.1539702   -0.1641658    0.3851680
9 months    ki0047075b-MAL-ED          <=20                 NA                -0.1013986   -0.3354712    0.0916473
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0177134   -0.3440159    0.2820866
9 months    ki1000108-IRC              <=20                 NA                -0.1937984   -0.6197553    0.1201420
9 months    ki1017093-NIH-Birth        <=20                 NA                 0.1434041   -0.1290496    0.3501113
9 months    ki1017093b-PROVIDE         <=20                 NA                -0.4234234   -1.2671705    0.1063159
9 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0916676   -0.3778921    0.1351004
9 months    ki1066203-TanzaniaChild2   <=20                 NA                 0.2426367   -0.7346632    0.6693311
9 months    ki1101329-Keneba           <=20                 NA                 0.1914989   -0.0300365    0.3653875
9 months    ki1113344-GMS-Nepal        <=20                 NA                -0.1481467   -0.4364671    0.0823035
9 months    ki1126311-ZVITAMBO         <=20                 NA                -0.1474142   -0.3571067    0.0298777
9 months    ki1135781-COHORTS          <=20                 NA                -0.1188833   -0.2141061   -0.0311288
9 months    ki1148112-LCNI-5           <=20                 NA                 0.1311370   -0.2620584    0.4018320
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.0981768   -0.2914709    0.0661871
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0783242   -0.3433827    0.1344364
12 months   ki1000108-IRC              <=20                 NA                 0.1570934   -0.2228621    0.4189930
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.1959959   -0.0654423    0.3932825
12 months   ki1017093b-PROVIDE         <=20                 NA                -0.2644628   -0.9931977    0.1978386
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0370555   -0.3093820    0.1786323
12 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0502959   -1.1951583    0.4974752
12 months   ki1101329-Keneba           <=20                 NA                 0.1281248   -0.0597898    0.2827198
12 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0505236   -0.1875175    0.2408487
12 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0558363   -0.2478664    0.1066429
12 months   ki1135781-COHORTS          <=20                 NA                -0.1137110   -0.1917127   -0.0408148
12 months   ki1148112-LCNI-5           <=20                 NA                 0.1179487   -0.2128848    0.3585422
18 months   ki0047075b-MAL-ED          <=20                 NA                -0.1003673   -0.2493671    0.0308628
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0106128   -0.1816965    0.1357017
18 months   ki1000108-IRC              <=20                 NA                 0.0625000   -0.2631370    0.3041877
18 months   ki1017093-NIH-Birth        <=20                 NA                -0.0591798   -0.2287252    0.0869708
18 months   ki1017093b-PROVIDE         <=20                 NA                -0.2245658   -0.8100682    0.1715443
18 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0491383   -0.1889538    0.2395517
18 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0175339   -0.9195591    0.4606182
18 months   ki1101329-Keneba           <=20                 NA                 0.1120493   -0.0494676    0.2487083
18 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0062190   -0.1493273    0.1407142
18 months   ki1126311-ZVITAMBO         <=20                 NA                 0.0375500   -0.1999943    0.2280714
18 months   ki1135781-COHORTS          <=20                 NA                -0.0285714   -0.0967822    0.0353972
18 months   ki1148112-LCNI-5           <=20                 NA                -0.0217143   -0.2836421    0.1867670
24 months   ki0047075b-MAL-ED          <=20                 NA                -0.0443427   -0.2036437    0.0938749
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0151435   -0.1453949    0.1531808
24 months   ki1000108-IRC              <=20                 NA                -0.0508452   -0.3345347    0.1725389
24 months   ki1017093-NIH-Birth        <=20                 NA                 0.0256178   -0.1696636    0.1882960
24 months   ki1017093b-PROVIDE         <=20                 NA                -0.2900433   -0.9280821    0.1368564
24 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.1346801   -0.1547193    0.3515494
24 months   ki1101329-Keneba           <=20                 NA                 0.0078880   -0.1626795    0.1534328
24 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0037779   -0.1942089    0.1689406
24 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0740741   -0.4364937    0.1969090
24 months   ki1135781-COHORTS          <=20                 NA                -0.1530622   -0.2060332   -0.1024177
24 months   ki1148112-LCNI-5           <=20                 NA                 0.1959064   -0.1226453    0.4240688


