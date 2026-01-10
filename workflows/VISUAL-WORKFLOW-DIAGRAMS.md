# Visual Workflow Diagrams

## 📊 COMPREHENSIVE PROCESS FLOWS

### Purpose
Visual representations of all critical compliance workflows. These diagrams use Mermaid syntax and render automatically in GitHub, VS Code, and most markdown viewers.

---

## 1. NEW ACCOUNT OPENING WORKFLOW

```mermaid
flowchart TD
    A[Customer Submits Application] --> B{Application Complete?}
    B -->|No| C[Request Missing Information]
    C --> A
    B -->|Yes| D[Customer Identification Program CIP]
    
    D --> E[Verify Government ID]
    E --> F[OFAC Screening]
    F --> G{OFAC Hit?}
    G -->|Yes| H[STOP - Escalate to Compliance]
    G -->|No| I[Verify Address]
    
    I --> J[Suitability Analysis]
    J --> K{Suitability Score}
    K -->|< 60 Unsuitable| L[Document Override Required]
    K -->|60-80 Review| M[Enhanced Principal Review]
    K -->|> 80 Suitable| N[Standard Principal Review]
    
    L --> O{Principal Approval?}
    M --> O
    N --> O
    
    O -->|Denied| P[Send Denial Letter]
    O -->|Approved| Q[Generate Account Number]
    
    Q --> R[Send Account Agreements]
    R --> S{Customer Signs?}
    S -->|No| T[Follow Up - 7 Days]
    T --> S
    S -->|Yes| U[Account Activated]
    
    U --> V[Welcome Email Sent]
    V --> W[Add to Compliance Monitoring]
    W --> X[Assign to Rep Book of Business]
    
    style H fill:#ff6b6b
    style U fill:#51cf66
    style L fill:#ffd43b
```

**Key Timeframes:**
- Principal Approval: Within 30 days of account opening (FINRA Rule 4512)
- OFAC Screening: Before first transaction
- Customer Agreements: Before first trade

---

## 2. TRADE APPROVAL AND SUPERVISION WORKFLOW

```mermaid
flowchart TD
    A[Customer Places Order] --> B{Account Type?}
    B -->|Discretionary| C[Check Written Authorization]
    B -->|Non-Discretionary| D[Verify Customer Authorization]
    
    C --> E{Authorization Valid?}
    E -->|No| F[REJECT - No Authority]
    E -->|Yes| G[Suitability Check]
    
    D --> H{Customer Authorized?}
    H -->|No| F
    H -->|Yes| G
    
    G --> I[Calculate Suitability Score]
    I --> J{Score?}
    J -->|< 60| K[Block Trade - Review Required]
    J -->|60-80| L[Flag for Principal Pre-Approval]
    J -->|> 80| M[Pre-Trade Compliance Checks]
    
    K --> N[Principal Review]
    L --> N
    
    N --> O{Principal Approves?}
    O -->|No| F
    O -->|Yes| M
    
    M --> P[Check Margin Requirements]
    P --> Q{Sufficient Funds?}
    Q -->|No| R[Margin Call or Reject]
    Q -->|Yes| S[Submit Order to Market]
    
    S --> T[Trade Executed]
    T --> U[Generate Trade Confirmation]
    U --> V[Send to Customer T+1]
    
    V --> W[Post-Trade Supervision]
    W --> X[Automated Exception Reports]
    X --> Y{Exceptions Detected?}
    Y -->|Churning| Z[CCO Review Required]
    Y -->|Concentration| Z
    Y -->|Pattern Day Trading| Z
    Y -->|None| AA[File in Account Records]
    
    Z --> AB[Principal Investigation]
    AB --> AC{Violation Found?}
    AC -->|Yes| AD[Corrective Action]
    AC -->|No| AA
    
    style F fill:#ff6b6b
    style T fill:#51cf66
    style K fill:#ffd43b
```

**Key Regulations:**
- FINRA Rule 2111 (Suitability)
- FINRA Rule 3110 (Supervision)
- Regulation T (Margin Requirements)

---

## 3. CUSTOMER COMPLAINT HANDLING WORKFLOW

```mermaid
flowchart TD
    A[Complaint Received] --> B[Immediate Logging]
    B --> C[Assign Case Number]
    C --> D[Timestamp & Source Documentation]
    
    D --> E[Notify Immediately]
    E --> F[Branch Manager]
    E --> G[Chief Compliance Officer]
    E --> H[Registered Rep if named]
    
    F --> I[Severity Classification]
    G --> I
    H --> I
    
    I --> J{Severity?}
    J -->|CODE RED Fraud/Regulatory| K[Immediate Escalation]
    J -->|CODE ORANGE Lawsuit| L[4-Hour Response]
    J -->|CODE YELLOW Standard| M[24-Hour Response]
    
    K --> N[Legal Counsel Engaged]
    L --> O[Insurance Carrier Notified]
    M --> P[Assign Investigator]
    
    N --> Q[Preserve All Evidence]
    O --> Q
    P --> Q
    
    Q --> R[Pull Records Automatically]
    R --> S[Account History]
    R --> T[Trade Records]
    R --> U[All Communications]
    
    S --> V[Investigation]
    T --> V
    U --> V
    
    V --> W[Interview Complainant]
    W --> X[Interview Registered Rep]
    X --> Y[Interview Witnesses]
    Y --> Z[Analyze Evidence]
    
    Z --> AA{Findings?}
    AA -->|Violation Confirmed| AB[Calculate Damages]
    AA -->|No Violation| AC[Document Findings]
    
    AB --> AD[Make Restitution Offer]
    AD --> AE{Customer Accepts?}
    AE -->|Yes| AF[Settlement Agreement]
    AE -->|No| AG[Escalate to Arbitration]
    
    AC --> AH[Send Response to Customer]
    AF --> AH
    
    AH --> AI{Amount >= $15,000?}
    AI -->|Yes| AJ[Update Form U4/U5 Within 30 Days]
    AI -->|No| AK[Annual Compliance Report Only]
    
    AJ --> AL[File with Regulatory Records]
    AK --> AL
    
    AL --> AM[Pattern Analysis]
    AM --> AN{Multiple Complaints vs Same Rep?}
    AN -->|Yes| AO[Enhanced Supervision Required]
    AN -->|No| AP[Close Case]
    
    style K fill:#ff6b6b
    style AF fill:#51cf66
    style AO fill:#ffd43b
```

**Required Actions:**
- Acknowledge receipt: 2 business days
- Complete investigation: 10 business days (standard)
- Form U4/U5 update: 30 days if $15,000+
- Retention: 4 years minimum

---

## 4. REGULATORY EXAMINATION RESPONSE WORKFLOW

```mermaid
flowchart TD
    A[Examination Notice Received] --> B[HOUR 1: Emergency Response]
    
    B --> C[Notify Immediately]
    C --> D[Chief Compliance Officer]
    C --> E[Chief Executive Officer]
    C --> F[Legal Counsel]
    C --> G[All Principals]
    
    D --> H[Preserve All Documents]
    E --> H
    F --> H
    G --> H
    
    H --> I[STOP Document Destruction]
    I --> J[Suspend Document Retention]
    J --> K[Preserve Electronic Communications]
    K --> L[Back Up All Systems]
    
    L --> M[Create Examination Team]
    M --> N[Examination Coordinator CCO]
    M --> O[Document Custodian]
    M --> P[Legal Liaison]
    M --> Q[IT Coordinator]
    
    N --> R[DAY 1: Initial Preparation]
    O --> R
    P --> R
    Q --> R
    
    R --> S[Analyze Examination Request]
    S --> T[Document All Requested Items]
    T --> U[Create Production Checklist]
    U --> V[Identify Potential Issues]
    
    V --> W[Assemble Response Team]
    W --> X[Begin Document Collection]
    X --> Y[Personnel Briefing]
    Y --> Z[Legal Strategy Session]
    
    Z --> AA[WEEK 1: Examination Preparation]
    AA --> AB[Organize Requested Materials]
    AB --> AC[Create Comprehensive Index]
    AC --> AD[Label Clearly]
    AD --> AE[Privilege Review]
    
    AE --> AF[Practice Interviews]
    AF --> AG[Mock Interviews for Key Personnel]
    AG --> AH[Testimony Coaching]
    
    AH --> AI[Issue Identification]
    AI --> AJ[Conduct Internal Investigation]
    AJ --> AK[Identify Weaknesses Proactively]
    AK --> AL[Prepare Explanations]
    AL --> AM[Develop Remediation Plans]
    
    AM --> AN[Provide Documents to Examiners]
    AN --> AO[Examination Fieldwork]
    
    AO --> AP[Daily Status Meetings]
    AP --> AQ[Track Progress]
    AQ --> AR[Monitor Examination Progress]
    AR --> AS[Adjust Strategy as Needed]
    
    AS --> AT[Examination Complete]
    AT --> AU{Deficiencies Found?}
    AU -->|Yes| AV[Deficiency Letter Received]
    AU -->|No| AW[Exit Interview]
    
    AV --> AX[Response Due 30 Days]
    AX --> AY[Prepare Detailed Response]
    AY --> AZ[Implement Remediation]
    AZ --> BA[Submit Response]
    
    BA --> BB{Accepted?}
    BB -->|No| BC[Additional Response Required]
    BB -->|Yes| BD[Close Examination]
    
    BC --> AX
    
    AW --> BD
    BD --> BE[Post-Examination Review]
    BE --> BF[Document Lessons Learned]
    BF --> BG[Update Procedures]
    BG --> BH[Additional Training]
    
    style A fill:#ff6b6b
    style BD fill:#51cf66
    style AV fill:#ffd43b
```

**Critical Timeframes:**
- Hour 1: Emergency notifications and document preservation
- Day 1: Initial preparation and team assembly
- Week 1: Document production and practice interviews
- 30 Days: Deficiency response deadline (if applicable)

---

## 5. AML SUSPICIOUS ACTIVITY REPORTING (SAR) WORKFLOW

```mermaid
flowchart TD
    A[Suspicious Activity Detected] --> B{Detection Source?}
    B -->|Automated Monitor| C[System Alert Generated]
    B -->|Employee Report| D[Employee Files Report]
    B -->|Customer Complaint| E[Complaint Review]
    
    C --> F[AML Officer Notified]
    D --> F
    E --> F
    
    F --> G[Initial Assessment]
    G --> H{Suspicious?}
    H -->|No| I[Document Reasoning]
    H -->|Yes| J[Gather All Evidence]
    
    I --> K[File in AML Records]
    
    J --> L[Transaction History]
    J --> M[Account Documentation]
    J --> N[Communications]
    J --> O[External Research]
    
    L --> P[Enhanced Due Diligence]
    M --> P
    N --> P
    O --> P
    
    P --> Q[Interview Relevant Personnel]
    Q --> R{Additional Info Needed?}
    R -->|Yes| S[Request from Customer]
    R -->|No| T[Complete Analysis]
    
    S --> U{Customer Provides?}
    U -->|Yes| T
    U -->|No| V[Document Refusal]
    V --> T
    
    T --> W{File SAR?}
    W -->|No| I
    W -->|Yes| X[Prepare SAR Filing]
    
    X --> Y[Complete FinCEN SAR Form]
    Y --> Z[Legal Review]
    Z --> AA[AML Officer Approval]
    AA --> AB[File with FinCEN]
    
    AB --> AC{Within 30 Days of Detection?}
    AC -->|No| AD[Document Delay Reason]
    AC -->|Yes| AE[SAR Successfully Filed]
    
    AD --> AE
    AE --> AF[DO NOT Notify Customer]
    AF --> AG[Mark Account for Monitoring]
    
    AG --> AH{Activity Continues?}
    AH -->|Yes| AI[Enhanced Monitoring]
    AH -->|No| AJ[Continue Standard Monitoring]
    
    AI --> AK{File Continuing Activity SAR?}
    AK -->|Yes 90 days| AB
    AK -->|No| AJ
    
    AJ --> AL[Retain SAR 5 Years]
    AL --> AM[Retain Supporting Docs 5 Years]
    
    style AB fill:#51cf66
    style AF fill:#ff6b6b
    style AI fill:#ffd43b
```

**Critical Requirements:**
- File within 30 days of initial detection
- Do NOT notify customer (federal crime to tip off)
- Retain SAR and supporting documents for 5 years
- Continuing activity SARs every 90 days if ongoing
- Absolute confidentiality

---

## 6. ANNUAL COMPLIANCE REVIEW CYCLE

```mermaid
flowchart TD
    A[January: Planning] --> B[Review Prior Year]
    B --> C[Identify Regulatory Changes]
    C --> D[Set Annual Compliance Goals]
    
    D --> E[February: Documentation Prep]
    E --> F[Gather All Required Documents]
    F --> G[Organize by Category]
    
    G --> H[March: Mock Audit]
    H --> I[External Consultant Engaged]
    I --> J[Audit Fieldwork Week 1-2]
    J --> K[Sample Account Review]
    K --> L[Trade Supervision Review]
    L --> M[WSP Review]
    
    M --> N[April: Audit Report]
    N --> O[Findings Documented]
    O --> P[Severity Classification]
    P --> Q[Management Responses]
    
    Q --> R[May: Remediation Plans]
    R --> S[Assign Responsible Parties]
    S --> T[Set Completion Deadlines]
    
    T --> U[June-August: Implementation]
    U --> V[Critical Findings First]
    V --> W[High Findings Next]
    W --> X[Medium/Low Findings]
    
    X --> Y[September: Verification]
    Y --> Z[CCO Verifies Critical/High]
    Z --> AA[Supervisor Verifies Medium]
    AA --> AB[Self-Certification Low]
    
    AB --> AC[October: Follow-Up Testing]
    AC --> AD[Test Remediation Effectiveness]
    AD --> AE{All Findings Resolved?}
    AE -->|No| AF[Extended Remediation]
    AE -->|Yes| AG[November: Annual Report Prep]
    
    AF --> AG
    
    AG --> AH[Draft Annual Compliance Report]
    AH --> AI[CEO Review]
    AI --> AJ[Legal Review]
    AJ --> AK[Board Review]
    
    AK --> AL[December: Board Presentation]
    AL --> AM[Present to Board]
    AM --> AN[Board Approval]
    AN --> AO[File with Records]
    
    AO --> AP[Next Year Planning]
    AP --> A
    
    style H fill:#ffd43b
    style AN fill:#51cf66
    style AF fill:#ff6b6b
```

**Key Deliverables:**
- Q1: Mock audit completion
- Q2: Remediation plans finalized
- Q3: Implementation of fixes
- Q4: Annual compliance report to board

---

## 7. EMPLOYEE ONBOARDING AND LICENSING WORKFLOW

```mermaid
flowchart TD
    A[New Hire Accepted Offer] --> B[Pre-Employment Screening]
    B --> C[Background Check]
    B --> D[Credit Check if financial access]
    B --> E[Reference Verification]
    
    C --> F{Screening Pass?}
    D --> F
    E --> F
    
    F -->|No| G[Rescind Offer]
    F -->|Yes| H[File Form U4]
    
    H --> I[Submit to FINRA CRD]
    I --> J[State Registration Filings]
    J --> K[Fingerprinting FBI/State]
    
    K --> L[Awaiting Registration Approval]
    L --> M{Approved?}
    M -->|No| N[Resolve Issues or Rescind]
    M -->|Yes| O[Registration Complete]
    
    O --> P[Day 1: Orientation]
    P --> Q[Compliance Training]
    Q --> R[Code of Ethics]
    Q --> S[AML Training]
    Q --> T[Insider Trading Policy]
    Q --> U[Social Media Policy]
    
    R --> V[System Access Setup]
    S --> V
    T --> V
    U --> V
    
    V --> W[Email & Communications]
    V --> X[Trading Systems]
    V --> Y[CRM Access]
    
    W --> Z[Week 1: Product Training]
    X --> Z
    Y --> Z
    
    Z --> AA[Equities Training]
    Z --> AB[Options Training if applicable]
    Z --> AC[Mutual Funds Training]
    Z --> AD[Fixed Income Training]
    
    AA --> AE[Week 2-4: Supervised Practice]
    AB --> AE
    AC --> AE
    AD --> AE
    
    AE --> AF[Shadow Senior Rep]
    AF --> AG[Mock Client Meetings]
    AG --> AH[Supervised Recommendations]
    
    AH --> AI[30 Days: First Review]
    AI --> AJ[Principal Evaluation]
    AJ --> AK{Performance Acceptable?}
    AK -->|No| AL[Additional Training or Termination]
    AK -->|Yes| AM[90 Days: Second Review]
    
    AM --> AN[Compliance Review]
    AN --> AO{Any Issues?}
    AO -->|Yes| AP[Corrective Action Plan]
    AO -->|No| AQ[Full Production Status]
    
    AP --> AR{Issues Resolved?}
    AR -->|No| AS[Termination - File Form U5]
    AR -->|Yes| AQ
    
    AQ --> AT[Ongoing Supervision]
    AT --> AU[Monthly Trade Reviews]
    AT --> AV[Quarterly Compliance Checks]
    AT --> AW[Annual Performance Review]
    
    style G fill:#ff6b6b
    style AQ fill:#51cf66
    style AL fill:#ffd43b
```

**Registration Timeline:**
- Form U4 filing: Before first day
- FINRA approval: Typically 2-4 weeks
- State registrations: Varies by state
- Initial training: First 2 weeks
- Full production: After 90-day probation

---

## 8. PRODUCT APPROVAL AND REVIEW WORKFLOW

```mermaid
flowchart TD
    A[New Product Proposed] --> B[Product Committee Review]
    
    B --> C[Legal Analysis]
    B --> D[Compliance Analysis]
    B --> E[Risk Analysis]
    B --> F[Operations Analysis]
    
    C --> G{Legal Concerns?}
    G -->|Yes| H[Address Legal Issues]
    G -->|No| I[Compile Analysis]
    
    H --> I
    
    D --> J{Compliance Approved?}
    J -->|No| K[Reject Product]
    J -->|Yes| I
    
    E --> L{Risk Acceptable?}
    L -->|No| K
    L -->|Yes| I
    
    F --> M{Operational Feasibility?}
    M -->|No| K
    M -->|Yes| I
    
    I --> N[Product Committee Decision]
    N --> O{Approved?}
    O -->|No| K
    O -->|Yes| P[Develop Procedures]
    
    P --> Q[Update WSP]
    Q --> R[Create Training Materials]
    R --> S[Design Supervision Procedures]
    S --> T[Build Compliance Monitoring]
    
    T --> U[Staff Training]
    U --> V[All Registered Reps Trained]
    V --> W[Training Documentation]
    W --> X[Attestation Signed]
    
    X --> Y[Pilot Phase]
    Y --> Z[Limited Rollout]
    Z --> AA[Enhanced Supervision]
    AA --> AB[30-Day Review]
    
    AB --> AC{Issues Identified?}
    AC -->|Critical| AD[Suspend Product]
    AC -->|Minor| AE[Adjust Procedures]
    AC -->|None| AF[Full Rollout]
    
    AD --> AG[Address Issues]
    AG --> AH{Resolved?}
    AH -->|No| K
    AH -->|Yes| Y
    
    AE --> Y
    
    AF --> AI[Annual Product Review]
    AI --> AJ[Review Performance]
    AJ --> AK[Review Complaints]
    AK --> AL[Review Suitability]
    AL --> AM{Continue Offering?}
    AM -->|No| AN[Phase Out Product]
    AM -->|Yes| AI
    
    style K fill:#ff6b6b
    style AF fill:#51cf66
    style AD fill:#ffd43b
```

**Required Steps:**
- Product committee approval before offering
- Written supervisory procedures updated
- All reps trained with documentation
- Pilot phase with enhanced supervision
- Annual product review

---

## 9. ADVERTISING AND MARKETING APPROVAL WORKFLOW

```mermaid
flowchart TD
    A[Marketing Material Created] --> B{Type of Communication?}
    
    B -->|Retail Communication| C[Principal Pre-Approval Required]
    B -->|Correspondence 25+| D[Principal Review]
    B -->|Internal Communication| E[No Approval Required]
    
    C --> F[Submit to Marketing Compliance]
    D --> F
    
    F --> G[Content Review]
    G --> H[Check Prohibited Statements]
    H --> I[No Guarantees]
    H --> J[No Predictions]
    H --> K[No Exaggerations]
    H --> L[Balanced Presentation]
    
    I --> M{Violations Found?}
    J --> M
    K --> M
    L --> M
    
    M -->|Yes| N[Reject with Comments]
    M -->|No| O[Regulatory Review]
    
    N --> P[Revise Material]
    P --> F
    
    O --> Q[Check Disclosure Requirements]
    Q --> R[Risk Disclosures Present?]
    R --> S[Fee Disclosures Present?]
    S --> T[Performance Disclaimers?]
    
    T --> U{All Disclosures?}
    U -->|No| N
    U -->|Yes| V[Principal Approval]
    
    V --> W{Requires FINRA Filing?}
    W -->|Yes| X[File with FINRA within 10 days]
    W -->|No| Y[Approved for Use]
    
    X --> Z[FINRA Review Period]
    Z --> AA{FINRA Comments?}
    AA -->|Yes| AB[Address Comments]
    AA -->|No| Y
    
    AB --> AC{Material Changes?}
    AC -->|Yes| V
    AC -->|No| Y
    
    Y --> AD[Date of First Use Documented]
    AD --> AE[Retain 3 Years]
    AE --> AF[Retain 2 Years Accessible]
    
    AF --> AG[Ongoing Use Monitoring]
    AG --> AH{Still Accurate?}
    AH -->|No| AI[Update or Retire]
    AH -->|Yes| AJ[Continue Use]
    
    AI --> F
    AJ --> AG
    
    style N fill:#ff6b6b
    style Y fill:#51cf66
    style X fill:#ffd43b
```

**Key Requirements:**
- Principal pre-approval before first use
- FINRA filing within 10 days (if required)
- Retention: 3 years (2 years easily accessible)
- No guarantees, predictions, or exaggerations
- Balanced presentation of risks and benefits

---

## 10. CYBERSECURITY INCIDENT RESPONSE WORKFLOW

```mermaid
flowchart TD
    A[Security Incident Detected] --> B{Severity?}
    
    B -->|CRITICAL Breach| C[Immediate Escalation]
    B -->|HIGH Attempted| D[2-Hour Response]
    B -->|MEDIUM Suspicious| E[24-Hour Response]
    
    C --> F[Notify IMMEDIATELY]
    F --> G[CISO/IT Director]
    F --> H[Chief Compliance Officer]
    F --> I[Legal Counsel]
    F --> J[CEO]
    
    G --> K[Isolate Affected Systems]
    H --> L[Preserve Evidence]
    I --> M[Legal Hold]
    J --> N[Board Notification if material]
    
    K --> O[Forensic Investigation]
    L --> O
    M --> O
    
    O --> P[Determine Scope]
    P --> Q{Customer Data Compromised?}
    Q -->|Yes| R[Regulatory Notification Required]
    Q -->|No| S[Internal Remediation]
    
    R --> T[Notify Regulators]
    T --> U[SEC 48-72 hours if material]
    T --> V[State AGs as required]
    T --> W[FINRA if member firm]
    
    U --> X[Customer Notification]
    V --> X
    W --> X
    
    X --> Y[Determine Affected Customers]
    Y --> Z[Draft Notification Letter]
    Z --> AA[Legal Review]
    AA --> AB[Send Notifications]
    AB --> AC[Offer Credit Monitoring if PII]
    
    S --> AD[Patch Vulnerabilities]
    AC --> AD
    
    AD --> AE[Implement Enhanced Security]
    AE --> AF[Update Cybersecurity Procedures]
    AF --> AG[Employee Training]
    AG --> AH[Testing of New Controls]
    
    AH --> AI[Post-Incident Review]
    AI --> AJ[Root Cause Analysis]
    AJ --> AK[Lessons Learned]
    AK --> AL[Update Incident Response Plan]
    
    AL --> AM[Annual Board Report]
    AM --> AN[Cybersecurity Assessment]
    
    style C fill:#ff6b6b
    style AD fill:#51cf66
    style R fill:#ffd43b
```

**Critical Timeframes:**
- Immediate: Isolation and evidence preservation
- 48-72 hours: SEC notification if material breach
- State-specific: Customer notification (varies by state)
- Ongoing: Enhanced monitoring and remediation

---

**🖤🛣️ BlackRoad Visual Workflows - Enterprise Compliance**

*\"One diagram is worth a thousand procedures.\"*
