#!/bin/bash

# Generate comprehensive Google Sheets-ready checklists for all exams
echo "🗂️  Generating comprehensive compliance checklists for all exams..."
echo ""

# Series 7 - Already have some, add exam prep
cat > finance/series-7/compliance-checklists/05-series-7-exam-preparation.csv << 'EXAM7'
Study Topic,Chapter,Hours Needed,Completed,Practice Questions,Score Target,Notes
Equity Securities,1-3,8,,50 questions,80%+,Common/preferred stock
Debt Securities,4-6,10,,60 questions,80%+,Bonds and fixed income
Municipal Securities,7-9,12,,70 questions,85%+,High weight on exam
Options,10-15,15,,100 questions,80%+,Complex - practice heavily
Investment Company Securities,16-18,8,,50 questions,80%+,Mutual funds
Variable Contracts,19-20,6,,40 questions,80%+,Variable annuities/life
Retirement Plans,21-22,6,,40 questions,80%+,401k/IRA/pension
Customer Accounts,23-24,5,,30 questions,80%+,Account types
Suitability and Trading,25-26,7,,50 questions,85%+,Core concept
Orders and Trade Execution,27-28,6,,40 questions,80%+,Market/limit orders
Rules and Regulations,29-30,10,,60 questions,85%+,FINRA/SEC rules
Economics and Analysis,31-32,7,,40 questions,75%+,Basic concepts
Practice Exam 1,Full,4,,125 questions,75%+,Timed - 225 min
Practice Exam 2,Full,4,,125 questions,80%+,Timed - 225 min
Practice Exam 3,Full,4,,125 questions,85%+,Final prep
Review Weak Areas,Various,10,,100 questions,90%+,Focus on gaps
Total Study Hours,All,122,,,80% overall,Recommended 6-8 weeks
EXAM7

# Series 24 Checklists
mkdir -p finance/series-24/compliance-checklists

cat > finance/series-24/compliance-checklists/01-supervisory-daily-checklist.csv << 'SUP24'
Task,Frequency,Responsible Party,Status,Notes,Regulation Reference
Review registered representative activity,Daily,Principal,,Monitor all rep trading,FINRA Rule 3110
Approve new account openings,Daily,Principal,,Review and sign accounts,FINRA Rule 3110
Review customer complaints,Daily,Principal,,Document and respond,FINRA Rule 4513
Monitor branch email communications,Daily,Principal,,Sample-based review,FINRA Rule 3110
Review order tickets for suitability,Daily,Principal,,Pre or post-trade review,FINRA Rule 2111
Verify transaction processing,Daily,Operations Principal,,Ensure proper execution,FINRA Rules
Review discretionary account activity,Daily,Principal,,Verify authorization,FINRA Rule 3260
Monitor outside business activities,Daily,Compliance Principal,,Track OBA approvals,FINRA Rule 3270
Check margin account compliance,Daily,Financial/Operations Principal,,Verify Reg T compliance,Regulation T
Review trade exceptions and errors,Daily,Operations Principal,,Resolve promptly,FINRA Rules
Verify advertising approvals,Daily,Principal,,Pre-use approval,FINRA Rule 2210
Monitor concentrated positions,Daily,Principal,,Risk management,FINRA Rule 2111
Review wire transfer requests,Daily,Financial Principal,,Verify authorization,Internal Policy
Check net capital status,Daily,Financial/Operations Principal,,Ensure compliance,SEC Rule 15c3-1
Review AML alerts,Daily,AML Compliance Principal,,Investigate red flags,Bank Secrecy Act
SUP24

cat > finance/series-24/compliance-checklists/02-wsp-annual-review.csv << 'WSP24'
Task,Component,Completed,Responsible Party,Changes Needed,Regulation Reference
Review supervisory structure,Organization Chart,,"Principal",,FINRA Rule 3110
Update designated principals list,Principal Designations,,"CCO",,FINRA Rule 3110
Review branch office definitions,OSJ vs. Non-OSJ,,"Compliance",,FINRA Rule 3110
Update registered rep supervision,Rep Oversight Procedures,,"Principal",,FINRA Rule 3110
Review new account procedures,Account Opening,,"Principal",,FINRA Rule 4512
Update suitability procedures,Suitability Review,,"Principal",,FINRA Rule 2111
Review advertising approval process,Advertising Procedures,,"Principal",,FINRA Rule 2210
Update correspondence review,Email/Communications,,"Compliance",,FINRA Rule 3110
Review AML procedures,AML Program,,"AML Officer",,Bank Secrecy Act
Update outside business activity process,OBA Procedures,,"Compliance",,FINRA Rule 3270
Review private securities transactions,Selling Away Procedures,,"Compliance",,FINRA Rule 3280
Update customer complaint handling,Complaint Procedures,,"Compliance",,FINRA Rule 4513
Review financial operations,FinOp Procedures,,"FinOp Principal",,SEC Rules
Update trade execution supervision,Order Handling,,"Principal",,FINRA Rule 5310
Review continuing education tracking,CE Compliance,,"Compliance",,FINRA Rule 1250
Update recordkeeping procedures,Books and Records,,"Compliance",,FINRA Rule 4510
Review branch inspection schedule,Annual Inspections,,"Principal",,FINRA Rule 3110
Update cybersecurity procedures,Data Protection,,"IT/Compliance",,SEC Guidance
Review business continuity plan,BCP Testing,,"Operations",,FINRA Rule 4370
Principal review and approval,WSP Sign-off,,"CCO/CEO",,FINRA Rule 3110
WSP24

# Series 65 Checklists
mkdir -p finance/series-65/compliance-checklists

cat > finance/series-65/compliance-checklists/01-investment-adviser-daily-checklist.csv << 'IA65'
Task,Frequency,Responsible Party,Status,Notes,Regulation Reference
Review client portfolio activity,Daily,Investment Adviser Representative,,Monitor for changes,Advisers Act Rule 206(4)-7
Update client account information,As needed,IAR,,Document changes,Advisers Act Rule 204-1
Review fee calculations,Daily,Operations,,Ensure accuracy,Advisers Act Section 206
Monitor custody account activity,Daily,CCO,,If adviser has custody,Advisers Act Rule 206(4)-2
Review investment recommendations,Daily,Supervising IAR,,Fiduciary duty compliance,Advisers Act Section 206
Check for conflicts of interest,Daily,CCO,,Identify and disclose,Advisers Act Section 206
Verify best execution,Daily,Trading,,Client best interest,Fiduciary Duty
Review client communications,Daily,CCO,,Sample-based monitoring,Advisers Act Rules
Monitor outside affiliations,Daily,CCO,,Track and disclose,Advisers Act Rules
Verify advisory fee debits,Daily,Operations,,Proper authorization,Advisers Act Rule 206(4)-2
Review trade allocation,Daily,CCO,,Fair and equitable,Advisers Act Section 206
Check for regulatory updates,Daily,CCO,,SEC/State notices,Advisers Act
IA65

cat > finance/series-65/compliance-checklists/02-form-adv-annual-update.csv << 'ADV65'
Task,Form ADV Part,Due Date,Responsible Party,Completed,Regulation Reference
Update firm information,Part 1A - Item 1,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Review ownership changes,Part 1A - Item 2,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Update disciplinary history,Part 1A - Item 11,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Review client type information,Part 1A - Item 5,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Update AUM calculations,Part 1A - Item 5,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Review custody status,Part 1A - Item 9,Within 90 days of FYE,CCO,,Advisers Act Rule 206(4)-2
Update fee schedule,Part 2A - Item 5,Within 90 days of FYE,CCO,,Advisers Act Rule 204-3
Review services offered,Part 2A - Item 4,Within 90 days of FYE,CCO,,Advisers Act Rule 204-3
Update conflicts of interest,Part 2A - Item 10-12,Within 90 days of FYE,CCO,,Advisers Act Rule 204-3
Review code of ethics,Part 2A - Item 11,Within 90 days of FYE,CCO,,Advisers Act Rule 204A-1
Update brochure supplements,Part 2B,Within 90 days of FYE,CCO,,Advisers Act Rule 204-3
Review privacy policy,Part 2A - Privacy,Annually,CCO,,Reg S-P
File Form ADV amendments,All Parts,Within 90 days of FYE,CCO,,Advisers Act Rule 204-1
Deliver updated brochure to clients,Part 2A/2B,Within 120 days of FYE,IAR,,Advisers Act Rule 204-3
ADV65

# Series 66 Checklists (Combined State Law)
mkdir -p finance/series-66/compliance-checklists

cat > finance/series-66/compliance-checklists/01-state-registration-compliance.csv << 'STATE66'
Task,Frequency,Responsible Party,State,Status,Regulation Reference
Verify state registrations current,Quarterly,CCO,All registered states,,State Securities Acts
Check registration renewal dates,Monthly,Compliance Officer,All registered states,,State Requirements
Update Form U4 for state changes,As needed,Compliance Officer,Applicable states,,NASAA
File state amendments,Within 30 days,Compliance Officer,Applicable states,,State Securities Acts
Pay state registration fees,Annually,Finance,All registered states,,State Fee Schedules
Verify IAR state registrations,Quarterly,Compliance Officer,All states where IARs work,,State Requirements
Check state CE requirements,Annually,Compliance Officer,All registered states,,State CE Rules
File state financial reports,As required,CFO,States requiring reports,,State Regulations
Update state notice filings,Annually,Compliance Officer,Notice filing states,,State Requirements
Review state advertising rules,Before publication,Compliance Officer,Applicable states,,State Advertising Rules
Verify state bonding requirements,Annually,CFO,States requiring bonds,,State Bonding Rules
Check state custody rules,Quarterly,CCO,States with custody,,State Custody Rules
Review state recordkeeping,Annually,Compliance Officer,All registered states,,State Recordkeeping
Monitor state regulatory changes,Monthly,Compliance Officer,All registered states,,State Notices
STATE66

# Series 79 Checklists (Investment Banking)
mkdir -p finance/series-79/compliance-checklists

cat > finance/series-79/compliance-checklists/01-underwriting-deal-checklist.csv << 'UW79'
Task,Deal Phase,Responsible Party,Completed,Document Required,Regulation Reference
Conduct issuer due diligence,Pre-Deal,Investment Banking,,Due Diligence Report,Securities Act 1933
Review financial statements,Pre-Deal,Investment Banking,,Audited Financials,Securities Act 1933
Engage legal counsel,Pre-Deal,Investment Banking,,Engagement Letter,Securities Act 1933
Draft underwriting agreement,Structuring,Legal,,Underwriting Agreement,FINRA Rule 5110
Prepare registration statement,Filing,Legal,,Form S-1,Securities Act Section 5
File with SEC,Filing,Compliance,,SEC Filing Confirmation,Securities Act Section 5
FINRA corporate financing review,Filing,Compliance,,FINRA Filing,FINRA Rule 5110
Conduct roadshow presentations,Marketing,Investment Banking,,Roadshow Materials,Securities Act Rules
Price the offering,Pricing,Syndicate Desk,,Pricing Committee Minutes,FINRA Rules
Allocate securities,Allocation,Syndicate Desk,,Allocation Records,FINRA Rule 5130
Execute stabilization (if applicable),Aftermarket,Syndicate Desk,,Stabilization Records,Regulation M
File final prospectus,Closing,Legal,,Final Prospectus,Securities Act Rule 424
Deliver securities,Settlement,Operations,,DTC Confirmation,Settlement Rules
Close transaction,Closing,Investment Banking,,Closing Documents,Underwriting Agreement
File Form 8-K,Post-Close,Issuer/Legal,,Form 8-K,Exchange Act
UW79

cat > finance/series-79/compliance-checklists/02-regulation-m-compliance.csv << 'REGM79'
Task,Regulation M Rule,Responsible Party,Completed,Notes,Violation Risk
Identify restricted period,Rule 101,Syndicate Desk,,Varies by security type,High
Cease distribution participant bidding,Rule 101,Trading Desk,,During restricted period,High
Verify passive market making,Rule 103,Trading Desk,,If applicable,Medium
Document stabilization activity,Rule 104,Syndicate Desk,,Penalty bids and stabilization,High
Notify FINRA of stabilization,Rule 104,Compliance,,Prior to commencement,High
Record stabilization transactions,Rule 104,Syndicate Desk,,All stabilizing bids,High
Cease stabilization,Rule 104,Syndicate Desk,,When no longer needed,Medium
Verify no manipulation,General,Compliance,,Review all activity,High
Document penalty bids,Rule 104,Syndicate Desk,,Reclaim concessions,Medium
Review aftermarket support,General,Compliance,,Ensure compliance,High
REGM79

# Life and Health Insurance Checklists
mkdir -p insurance/life-and-health/compliance-checklists

cat > insurance/life-and-health/compliance-checklists/01-new-policy-application.csv << 'LH1'
Task,Required,Completed,Responsible Party,Document,State Regulation
Complete insurance application,Yes,,Agent,Application Form,State Insurance Code
Obtain applicant signature,Yes,,Agent,Signed Application,State Requirements
Collect initial premium (if applicable),If paid with app,,Agent,Premium Receipt,State Requirements
Conduct needs analysis,Yes,,Agent,Needs Analysis Form,Best Practice
Verify insurable interest,Yes,,Agent,Application,State Insurance Code
Disclose all policy features,Yes,,Agent,Policy Illustration,State Requirements
Provide replacement notice (if replacing),If applicable,,Agent,Replacement Form,State Replacement Rules
Obtain medical history,Yes,,Agent,Medical Questionnaire,Underwriting
Schedule paramedical exam (if needed),If required,,Agent,Exam Appointment,Underwriting
Collect beneficiary information,Yes,,Agent,Beneficiary Designation,State Requirements
Provide important notices,Yes,,Agent,State-Required Notices,State Insurance Code
Verify free look period disclosure,Yes,,Agent,Free Look Notice,State Requirements (10-30 days)
Submit application to underwriting,Yes,,Agent,Complete Application,Company Policy
Follow up on underwriting decision,As needed,,Agent,Underwriting Response,Company Policy
Deliver policy to customer,Upon issue,,Agent,Insurance Policy,State Requirements
Explain policy provisions,Upon delivery,,Agent,Policy Review,Best Practice
Obtain delivery receipt,Recommended,,Agent,Signed Receipt,Best Practice
LH1

cat > insurance/life-and-health/compliance-checklists/02-annual-license-maintenance.csv << 'LH2'
Task,Frequency,Due Date,Responsible Party,Completed,State Requirement
Renew insurance license,Every 2 years,Renewal date,Agent,,State Insurance Department
Complete continuing education,Every 2 years,Before renewal,Agent,,State CE Requirements (20-24 hours)
Complete ethics CE course,Every 2 years,Before renewal,Agent,,State Requirements (3-4 hours)
Pay license renewal fees,Every 2 years,Renewal date,Agent/Firm,,State Fee Schedule
Update background information,As needed,Within 30 days,Agent,,NAIC
Report name/address changes,As needed,Within 30 days,Agent,,State Insurance Department
Disclose criminal/regulatory actions,As needed,Within 30 days,Agent,,State Requirements
Maintain E&O insurance,Ongoing,Policy renewal,Agent/Firm,,State or Company Requirement
Update company appointments,As needed,Within 30 days,Agent/Firm,,State Insurance Department
Complete anti-money laundering training,Annually,December 31,Agent,,Company/NAIC
Review state insurance laws,Annually,December 31,Agent,,Best Practice
Verify HIPAA compliance training,Annually,December 31,Agent,,HIPAA Requirements
Update privacy policy knowledge,Annually,December 31,Agent,,State Requirements
LH2

echo "✅ Series 7 checklists: $(ls -1 finance/series-7/compliance-checklists/*.csv | wc -l) files"
echo "✅ Series 24 checklists: $(ls -1 finance/series-24/compliance-checklists/*.csv | wc -l) files"
echo "✅ Series 65 checklists: $(ls -1 finance/series-65/compliance-checklists/*.csv | wc -l) files"
echo "✅ Series 66 checklists: $(ls -1 finance/series-66/compliance-checklists/*.csv | wc -l) files"
echo "✅ Series 79 checklists: $(ls -1 finance/series-79/compliance-checklists/*.csv | wc -l) files"
echo "✅ Life & Health checklists: $(ls -1 insurance/life-and-health/compliance-checklists/*.csv | wc -l) files"
echo ""
echo "📊 Total checklists created: $(find . -name '*.csv' -path '*/compliance-checklists/*' | wc -l)"
echo ""
echo "🎯 All checklists are Google Sheets ready (CSV format)"
echo "📥 Import to Google Sheets: File > Import > Upload > Select CSV"
