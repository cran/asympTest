\name{DIGdata}
\alias{DIGdata}
\docType{data}
\title{DIG NHLBI Teaching Dataset}
\description{
A clinical trial focused dataset was developed using the Digitalis
Investigation Group (DIG). This dataset was designed to replicate the
results found in the February 1997 New England Journal of Medicine
article. Note that statistical
processes such as permutations within treatment groups were used to
completely anonymize the data; therefore, inferences derived from the
teaching dataset may not be valid. The DIG Trial was a randomized, double-blind, multicenter trial with more than 300 centers in
the United States and Canada participating. The purpose of the trial was to examine the safety
and efficacy of Digoxin in treating patients with congestive heart
failure in sinus rhythm. Data on 5281 male and 1519 female collected.
}
\format{This data frame contains the following columns:
  \describe{
    \item{ID}{
Patient ID
    }
    \item{TRTMT}{
(0=Placebo, 1=Treatment)
    }
    \item{AGE}{
Calculated: age at randomization
    }
    \item{RACE}{
Q5: Race, 1=White 2=Nonwhite
    }
    \item{SEX}{
 (1 = male or 2 = female)
    }
    \item{EJFPER}{
Q3: Ejection fraction (percent)
    }
    \item{EJFMETH}{
Q3A: Ejection Fraction method
    }
    \item{CHESTX}{
Q6: Chest X-ray (CT-Ratio)
    }
    \item{BMI}{
Calculated: Body Mass Index (kg per M-squared)
    }
    \item{KLEVEL}{
Q9A: Serum Potassium level
    }
    \item{CREAT}{
Q9: Serum Creatinine (mg per dL)
    }
    \item{DIGDOSER}{
Q10: Recommended Digoxin dose
    }
    \item{CHFDUR}{
Q12: Duration of CHF (months)
    }
    \item{RALES}{
Q13: Rales
    }
    \item{ELEVJVP}{
Q14: Elevated jugular venous pressure
    }
    \item{PEDEMA}{
Q15: Peripheral Edema
    }
    \item{RESTDYS}{
Q16: Dyspnea at Rest
    }
    \item{EXERTDYS}{
Q17: Dyspnea on Exertion
    }
    \item{ACTLIMIT}{
Q18: Limitation of activity
    }
    \item{S3}{
Q19: S3 Gallop
    }
    \item{PULCONG}{
Q20: Pulmonary congestion
    }
    \item{NSYM}{
Calculated: Sum of Q13-Q20, Y or N status
    }
    \item{HEARTRTE}{
Q21: Heart Rate (beats per min)
    }
    \item{DIABP}{
Q22: Diastolic BP (mmHg)
    }
    \item{SYSBP}{
Q22: Sysolic BP (mmHg)
    }
    \item{FUNCTCLS}{
Q23: NYHA Functional Class
    }
    \item{CHFETIOL}{
Q24: CHF Etiology
    }
    \item{PREVMI}{
Q25: Previous Myocardial Infarction
    }
    \item{ANGINA}{
Q26: Current Angina
    }
    \item{DIABETES}{
Q27: History of Diabetes
    }
    \item{HYPERTEN}{
Q28: History of Hypertension
    }
    \item{DIGUSE}{
Q29: Digoxin within past week
    }
    \item{DIURETK}{
Q30: Potassium sparing Diuretics
    }
    \item{DIURET}{
Q31: Other Diuretics
    }
    \item{KSUPP}{
Q31A: Potassium supplements
    }
    \item{ACEINHIB}{
Q32: Ace inhibitors
    }
    \item{NITRATES}{
Q33: Nitrates
    }
    \item{HYDRAL}{
Q34: Hydralazine
    }
    \item{VASOD}{
Q35: Other Vasodilators
    }
    \item{DIGDOSE}{
Q36: Dose of Digoxin per Placebo prescribed
    }
    \item{CVD}{
Hosp: Cardiovascular Disease
    }
    \item{CVDDAYS}{
Days randomization to First CVD Hosp
    }
    \item{WHF}{
Hosp: Worsening Heart Failure
    }
    \item{WHFDAYS}{
Days randomization to First WHF Hosp
    }
    \item{DIG}{
Hosp: Digoxin Toxicity
    }
    \item{DIGDAYS}{
Days rand. to First Digoxin Tox Hosp
    }
    \item{MI}{
Hosp: Myocardial Infarction
    }
    \item{MIDAYS}{
Days randomization to First MI Hosp
    }
    \item{UANG}{
Hosp: Unstable Angina
    }
    \item{UANGDAYS}{
Days rand. to First Unstable Angina Hosp
    }
    \item{STRK}{
Hosp: Stroke
    }
    \item{STRKDAYS}{
Days randomization to First Stroke Hosp
    }
    \item{SVA}{
Hosp: Supraventricular Arrhythmia
    }
    \item{SVADAYS}{
Days rand. to First SupraVent Arr. Hosp
    }
    \item{VENA}{
Hosp: Ventricular Arrhythmia
    }
    \item{VENADAYS}{
Days rand. to First Vent. Arr. Hosp
    }
    \item{CREV}{
Hosp: Coronary Revascularization
    }
    \item{CREVDAYS}{
Days rand. to First Cor. Revasc.
    }
    \item{OCVD}{
Hosp: Other Cardiovascular Event
    }
    \item{OCVDDAYS}{
Days rand. to First Other CVD Hosp
    }
    \item{RINF}{
Hosp: Respiratory Infection
    }
    \item{RINFDAYS}{
Days rand. to First Resp. Infection Hosp
    }
    \item{OTH}{
Hosp: Other noncardiac, nonvascular
    }
    \item{OTHDAYS}{
Days rand. to 1st Other Non CVD Hosp
    }
    \item{HOSP}{
Hosp: Any Hospitalization
    }
    \item{HOSPDAYS}{
Days randomization to First Any Hosp
    }
    \item{NHOSP}{
Number of Hospitalizations
    }
    \item{DEATH}{
Vital Status of Patient 1=Death 0=Alive
    }
    \item{DEATHDAY}{
Days till last followup or death
    }
    \item{REASON}{
Cause of Death
    }
    \item{DWHF}{
Primary Endpt: Death or Hosp from HF
    }
    \item{DWHFDAYS}{
Days rand. to death or Hosp from WHF
    }
  }
}

\source{NHLBI Teaching Dataset}
\references{
The effect of digoxin on mortality and morbidity in patients
with heart failure . The Digitalis Investigation Group. N En gl J
Med. 1997 Feb 20;336(8):525-33
}

\examples{
data(DIGdata)
}
\keyword{datasets}
