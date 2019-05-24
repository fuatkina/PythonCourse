***with BF_exp_prop

ivreg2 BF_exp_prop (Pre_occup2years=privatelands95) HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2005, first
estimates store Y2005

ivreg2 BF_exp_prop (Pre_occup2years=privatelands95) HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2006, first
estimates store Y2006

ivreg2 BF_exp_prop (Pre_occup2years=privatelands95) HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2007, first
estimates store Y2007

ivreg2 BF_exp_prop (Pre_occup2years=privatelands95) HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2008, first
estimates store Y2008

ivreg2 BF_exp_prop (Pre_occup2years=privatelands95) HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2009, first
estimates store Y2009

coefplot Y2005 Y2006 Y2007 Y2008 Y2009, keep(Pre0_2dummy_spillover) vertical


reg Pre_occup2years HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2005, first
estimates store Y2005

reg Pre_occup2years HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2006, first
estimates store Y2006

reg Pre_occup2years HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2007, first
estimates store Y2007

reg Pre_occup2years HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2008, first
estimates store Y2008

reg Pre_occup2years HDI GDPpercapita StatCap_Education StatCap_Health pt_vs_ Catholic_ratio log_Agr Homicide_prop taxrevenues Population LandReformIndex Pre0_2dummy_spillover if year==2009, first
estimates store Y2009

coefplot Y2005 Y2006 Y2007 Y2008 Y2009, keep(Pre0_2dummy_spillover) vertical
















