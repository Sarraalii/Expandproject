install.packages("missForest")
library(missForest)
library(dplyr)


missForest_imputed <- data.frame(
  original = titanic_numeric$Age,
  imputed_missForest = missForest(titanic_numeric)$ximp$Age
)
missForest_imputed
# Impute missing values in the entire dataset
imputed_data <- missForest(base)



dat <- dat %>% select(.,c(norm_q,pass_q,relat_q,hit_q,police_q,live_q,job_q,names_q,asslt_q,frnd_q,hurt_q,fam_q,relig_q,
                          comfrt,control,public,change,seen,sustain,anonym,promisc,nervous,public_plc,bars,advnce,poc,
                          mom, dad, sibs, partner, ext_fam, new_frnd, old_frnd, co_work, employr, relig_mem, residence, stranger, famdoc, oth_hlth, classmt, teach,
                          central, not_sig, imprtant, understand, part_q, pos_q, bond_q, proud_q, polit_q, solv_q, prob_q,
                          education,age,house_income,ind_income,curr_gender,curr_orient,poc,trans,cannabis,cannabis_1-,
                          suicidal,age,province,gender,trans,intersex,cannabis_1,
                          poc,residence,education,house_income,ind_income,rural_city,where_live,
                          gen_health,fitness1,mental_health,stresslife,diagnosis,
                          con_eating,con_anxiety,con_ADD,con_ADHD,con_depression,treat_comorbid,disability,
                          con_OCD,con_panic,con_PTSD,con_others,con_bipolar,receive_help,
                          cigs_smoked,curr_smoke,use_cigar,use_wp,use_smokeless,covid,risk1,risk2,risk3,risk4,
                          plan_quit,quit_attempts,tailored,quit_support,time_vape,curr_vape,alcohol,disability___1,disability___2,
                          disability___3,disability___4,disability___5,disability___6,disability___7,disability___9,disability,
                          alcohol_amount,cannabis,drug_12m,poppers,crystal_meth,crack,cocaine,heroin,pres_opioids,
                          treatment___1,treatment___2,treatment___3,treatment___4,treatment___5,
                          fentanyl,GHB,tranquilizers,special_K,MDMA,psychedelics,drug_others,substances_covid,seek_help,diff_cesd,central,not_sig,imprtant,
                          understand,mom,dad,sibs,partner,ext_fam,new_frnd,old_frnd,co_work,employr,relig_mem,stranger,
                          famdoc,oth_hlth,classmt,teach,part_q,pos_q,bond_q,proud_q,polit_q,solv_q,prob_q,norm_q,
                          pass_q,relat_q,hit_q,police_q,live_q,job_q,names_q,asslt_q,frnd_q,
                          hurt_q,fam_q,relig_q,comfrt,control,public,change,seen,sustain,anonym,promisc,
                          nervous,public_plc,bars,advnce,rates,accept,stress,stigma,pressure,mhealth,
                          culture,mentalill,drinker,streetdrug,jail,divorce,slap,
                          beat,swear,inapptouch,inapptouchyou,forced,employ,ethnicity))

table(dat$curr_orient)
dat[sapply(dat, is.nan)] <- NA
# lapply(dat[,651:684],function(i) {
#   table(i, useNA="ifany")})

###MICE imputation
library(mice)
dat_impute <- dat
init <- mice(dat_impute, maxit=0) 
meth <- init$method
predM <- init$predictorMatrix

set.seed(123)
imputed.hd <- mice(dat_impute, method='pmm', predictorMatrix=predM, m=5)
#pmm = imputation for any types of variables, rather than LDA
df1 <- complete(imputed.hd,1)