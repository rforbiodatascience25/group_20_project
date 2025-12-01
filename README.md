# group20_project

## Project Contributors:
| Name                      | Student id | Username           |
|---------------------------|------------|--------------------|
| Alexander Videbæk         | s235354    | Lebimle            |
| Laurine Panel             | s251930    | laurinepanel-coder |
| Mathias Glerup Filtenborg | s225015    | MathiasGF          |
| Rasmus Tøffner-Clausen    | s235430    | s235430            |
| Qiju Chen                 | s252613    | QJ-ChenR           |

## Database:
Prostate dataset from this data base : <https://hbiostat.org/data/>

### Meta data

This file contains only these variables : patient number, stage, status, age, weight, performance, medical_history, study_date

### Treatment_data

This file contains all other variables not included in meta_data

### Data tidy

This file contains our tidying dataset

### Data augment

This file contains all the data required for the survival analysis

### Data for modelling

This file contains all the data required for modeling

## Project description
### Background

Prostate cancer is one of the most common cancer types among men, and approximately 12–13% are expected to be diagnosed at some point during their lifetime. Especially once over the age of 65 where 60% of cases are diagnosed. Methods used to diagnose include Serum hemoglobin testing and prostatic acid phosphatase (PAP) testing. Both tests have been used for many years. Serum hemoglobin tests for low and high glycosylate levels in the hemoglobin, with low levels signaling anemia or chronic disease processes, which may occur in patients with advanced cancer, while high levels can be associated with certain physiological conditions. Variations in hemoglobin therefore serve as a general indicator of systemic health status. Another used indicator is prostatic acid phosphatase (PAP), which is an enzyme produced by the prostate gland. Elevated PAP levels can indicate increased activity in prostate tissue which is often a precursor for prostate cancer or other prostate related diseases. It is hence important to observe these values to determine if a patient might be sick with cancer. Today prostate-specific-antigen (PSA) are used for a more sensitive detection of early stage prostate cancer.

### Aim

This project aims to investigate the clinical data in data set. This includes correlation of markers; hemoglobin and prostatic acid phosphatase in patients, with the goal to determine if the biomarkers are a good estimate when predicting or evaluating prostate cancer. Along with this the effect of hormone treatment will also be investigated.
