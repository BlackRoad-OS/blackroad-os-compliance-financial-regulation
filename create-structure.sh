#!/bin/bash
# Create all regulated industry directories

# Finance & Securities
mkdir -p finance/series-7/{regulations,compliance-checklists,case-studies,templates,training-materials,content}
mkdir -p finance/series-24/{regulations,compliance-checklists,case-studies,templates,training-materials,content}
mkdir -p finance/series-63/{regulations,compliance-checklists,case-studies,templates,training-materials,content}
mkdir -p finance/series-65/{regulations,compliance-checklists,case-studies,templates,training-materials,content}
mkdir -p finance/series-66/{regulations,compliance-checklists,case-studies,templates,training-materials,content}
mkdir -p finance/series-79/{regulations,compliance-checklists,case-studies,templates,training-materials,content}

# Banking
mkdir -p banking/{federal-reserve,fdic,occ,cfpb,dodd-frank,anti-money-laundering}

# Insurance
mkdir -p insurance/{state-licensing,naic,life-health,property-casualty,annuities}

# Real Estate
mkdir -p real-estate/{state-licensing,fair-housing,respa,tila,appraisal-standards}

# Healthcare
mkdir -p healthcare/{hipaa,fda,cms,medical-licensing,nursing,pharmacy}

# Legal
mkdir -p legal/{bar-association,legal-ethics,client-trust-accounts,professional-conduct}

# Energy
mkdir -p energy/{ferc,nerc,epa,nuclear-regulatory,oil-gas,renewable-energy}

# Transportation
mkdir -p transportation/{faa,fmcsa,dot,maritime,railroad,aviation}

# Telecommunications
mkdir -p telecommunications/{fcc,net-neutrality,spectrum-licensing,privacy}

# Food & Drug
mkdir -p food-and-drug/{fda,usda,food-safety,drug-approval,gmp}

# Environmental
mkdir -p environmental/{epa,clean-air-act,clean-water-act,superfund}

# Construction
mkdir -p construction/{osha,building-codes,contractors-license,safety}

# Education
mkdir -p education/{accreditation,title-ix,student-loans,teacher-certification}

# Government Contracting
mkdir -p government-contracting/{far,dfars,security-clearance,small-business}

# Defense
mkdir -p defense/{itar,ear,defense-contractors,export-control}

# Aviation
mkdir -p aviation/{faa,part-121,part-135,maintenance,pilot-certification}

# Maritime
mkdir -p maritime/{coast-guard,maritime-law,jones-act,vessel-documentation}

# Agriculture
mkdir -p agriculture/{usda,organic-certification,pesticides,farm-subsidies}

# Gaming
mkdir -p gaming/{state-gaming-commission,tribal-gaming,online-gambling,sports-betting}

# Alcohol & Tobacco
mkdir -p alcohol-tobacco/{ttb,atf,age-verification,distribution-licenses}

# Media & Broadcasting
mkdir -p media-broadcasting/{fcc,content-regulations,advertising-standards}

# Pharmaceuticals
mkdir -p pharmaceuticals/{fda,drug-approval,clinical-trials,gmp,dea-schedules}

# Technology & Data
mkdir -p technology/{gdpr,ccpa,data-privacy,cybersecurity,export-controls}

# Accounting
mkdir -p accounting/{cpa,gaap,fasb,sec-reporting,pcaob,sarbanes-oxley}

# Employment & Labor
mkdir -p employment/{dol,eeoc,nlrb,wage-hour,workplace-safety}

# Consumer Protection
mkdir -p consumer-protection/{ftc,cfpb,consumer-credit,truth-in-lending}

echo "✅ All industry directories created!"
