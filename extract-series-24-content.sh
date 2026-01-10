#!/bin/bash
# Extract Series 24 content line-by-line and organize by topics

SERIES_24_SOURCE="$HOME/blackroad-textbooks-copypaste/Series_24_LEM_FINALONLINE.txt"
SERIES_24_DEST="$HOME/blackroad-os-compliance-financial-regulation/finance/series-24/content"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 SERIES 24 CONTENT EXTRACTION"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Source: $SERIES_24_SOURCE"
echo "Destination: $SERIES_24_DEST"
echo ""

# Create content directory
mkdir -p "$SERIES_24_DEST"

# Copy the full source to content directory
echo "📥 Copying full Series 24 textbook..."
cp "$SERIES_24_SOURCE" "$SERIES_24_DEST/00-FULL-SERIES-24-TEXTBOOK.txt"

echo "✅ Full textbook copied"
echo ""

# Get total line count
total_lines=$(wc -l < "$SERIES_24_SOURCE")
echo "📊 Total lines: $total_lines"
echo ""

# Extract table of contents/lesson structure
echo "📑 Extracting lesson structure..."
grep -n "^Lesson \|^LESSON \|Unit \|UNIT \|Chapter \|CHAPTER " "$SERIES_24_SOURCE" | head -100 > "$SERIES_24_DEST/00-TABLE-OF-CONTENTS.txt"

echo "✅ Table of contents extracted"
echo ""

# Extract key topics (Series 24 is for Principals - focus on supervisory content)
echo "📌 Extracting key compliance topics..."

# Supervision and Management
echo "  • Supervision and Management..."
grep -i "supervis\|oversight\|management\|principal" "$SERIES_24_SOURCE" | head -100 > "$SERIES_24_DEST/01-SUPERVISION-MANAGEMENT.txt"

# FINRA Rules (Principal level)
echo "  • FINRA Rules..."
grep -i "FINRA Rule\|Rule [0-9]" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/02-FINRA-RULES.txt"

# SEC Rules and Regulations
echo "  • SEC Rules..."
grep -i "SEC Rule\|Regulation\|Securities Exchange Act" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/03-SEC-RULES.txt"

# Written Supervisory Procedures (WSP)
echo "  • Written Supervisory Procedures..."
grep -i "written supervisory procedure\|WSP\|compliance manual" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/04-WRITTEN-SUPERVISORY-PROCEDURES.txt"

# Financial Operations and Reporting
echo "  • Financial Operations..."
grep -i "financial operation\|net capital\|financial report\|books and records" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/05-FINANCIAL-OPERATIONS.txt"

# Employee Registration and Qualification
echo "  • Employee Registration..."
grep -i "registration\|Form U4\|Form U5\|qualification" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/06-EMPLOYEE-REGISTRATION.txt"

# Customer Complaints and Arbitration
echo "  • Customer Complaints..."
grep -i "customer complaint\|arbitration\|dispute resolution" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/07-CUSTOMER-COMPLAINTS.txt"

# Sales Practices Supervision
echo "  • Sales Practices..."
grep -i "sales practice\|suitability\|churning\|unauthorized trading" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/08-SALES-PRACTICES.txt"

# Advertising and Communications
echo "  • Advertising and Communications..."
grep -i "advertising\|communication\|sales literature\|retail communication" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/09-ADVERTISING-COMMUNICATIONS.txt"

# Branch Office Supervision
echo "  • Branch Office Supervision..."
grep -i "branch office\|OSJ\|office of supervisory jurisdiction" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/10-BRANCH-OFFICE-SUPERVISION.txt"

# Municipal Securities Principal
echo "  • Municipal Securities..."
grep -i "municipal\|muni\|MSRB" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/11-MUNICIPAL-SECURITIES.txt"

# Options Principal
echo "  • Options Supervision..."
grep -i "option\|ROP\|registered options principal" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/12-OPTIONS-SUPERVISION.txt"

# AML and Compliance Programs
echo "  • AML and Compliance..."
grep -i "anti-money laundering\|AML\|compliance program\|suspicious activity" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/13-AML-COMPLIANCE.txt"

# Continuing Education
echo "  • Continuing Education..."
grep -i "continuing education\|regulatory element\|firm element" "$SERIES_24_SOURCE" | head -50 > "$SERIES_24_DEST/14-CONTINUING-EDUCATION.txt"

echo ""
echo "✅ Key topics extracted"
echo ""

# Create README for Series 24
cat > "$SERIES_24_DEST/README.md" << 'README_EOF'
# Series 24: General Securities Principal

## Overview
The Series 24 exam, formally known as the General Securities Principal Qualification Examination, qualifies individuals to supervise and manage the investment banking and securities business of a broker-dealer.

## Regulatory Authority
- **FINRA** - Financial Industry Regulatory Authority
- **SEC** - Securities and Exchange Commission
- **MSRB** - Municipal Securities Rulemaking Board (for municipal principals)

## Content Covered

### 1. Supervisory Responsibilities
- Supervision and management of registered representatives
- Written Supervisory Procedures (WSP)
- Branch office supervision
- Office of Supervisory Jurisdiction (OSJ)
- Compliance programs

### 2. Regulatory Compliance
- FINRA rules and regulations
- SEC rules and regulations
- MSRB rules (for municipal securities)
- Registration and qualification requirements
- Books and records requirements

### 3. Financial Operations
- Net capital requirements
- Financial reporting
- Customer protection rules
- SIPC coverage
- Margin requirements

### 4. Sales Supervision
- Sales practices supervision
- Suitability and best interest
- Communications and advertising approval
- Customer complaints and arbitration
- Churning and unauthorized trading detection

### 5. Employee Management
- Registration procedures (Form U4, U5)
- Continuing education requirements
- Outside business activities
- Private securities transactions
- Disciplinary actions

### 6. Specialized Products
- Municipal securities supervision
- Options supervision (ROP)
- Investment company products
- Direct participation programs
- Variable contracts

### 7. Compliance Programs
- AML (Anti-Money Laundering) programs
- Suspicious Activity Reports (SARs)
- Customer Identification Program (CIP)
- Privacy compliance (Reg S-P)
- Business continuity planning

## Files in This Directory

- `00-FULL-SERIES-24-TEXTBOOK.txt` - Complete Series 24 textbook
- `00-TABLE-OF-CONTENTS.txt` - Lesson structure
- `01-SUPERVISION-MANAGEMENT.txt` - Supervisory responsibilities
- `02-FINRA-RULES.txt` - FINRA rules for principals
- `03-SEC-RULES.txt` - SEC regulations
- `04-WRITTEN-SUPERVISORY-PROCEDURES.txt` - WSP requirements
- `05-FINANCIAL-OPERATIONS.txt` - Financial and operational compliance
- `06-EMPLOYEE-REGISTRATION.txt` - Registration procedures
- `07-CUSTOMER-COMPLAINTS.txt` - Complaint handling and arbitration
- `08-SALES-PRACTICES.txt` - Sales supervision
- `09-ADVERTISING-COMMUNICATIONS.txt` - Communication approval
- `10-BRANCH-OFFICE-SUPERVISION.txt` - Branch and OSJ supervision
- `11-MUNICIPAL-SECURITIES.txt` - Municipal securities principal
- `12-OPTIONS-SUPERVISION.txt` - Registered Options Principal (ROP)
- `13-AML-COMPLIANCE.txt` - AML programs and procedures
- `14-CONTINUING-EDUCATION.txt` - CE requirements

## Key Differences from Series 7

While Series 7 is for representatives who sell securities, Series 24 is for **principals who supervise** those representatives:

- **Supervisory Authority** - Approve communications, supervise sales practices
- **Compliance Responsibility** - Implement and oversee compliance programs
- **Financial Operations** - Understand firm's financial obligations
- **Employee Management** - Register, train, and discipline employees
- **Higher Standard** - Greater responsibility and accountability

## BlackRoad Compliance Commitment

As principals, we uphold:
✓ **Supervisory Excellence** - Active supervision of all representatives
✓ **Compliance Leadership** - Robust compliance programs
✓ **Financial Integrity** - Sound financial operations
✓ **Employee Development** - Proper training and qualification
✓ **Customer Protection** - Highest standards of customer care

## Usage

1. Review full textbook for comprehensive supervisory knowledge
2. Reference specific topic files for compliance areas
3. Use as training material for Series 24 exam preparation
4. Implement supervisory procedures based on requirements

---

**Maintained by:** BlackRoad OS, Inc.
**Last Updated:** January 9, 2026
**License:** Proprietary - Internal Use Only
README_EOF

echo "✅ README created"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SERIES 24 EXTRACTION COMPLETE!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📂 Content location: $SERIES_24_DEST"
echo "📊 Files created: $(ls -1 "$SERIES_24_DEST" | wc -l)"
echo ""
echo "Next steps:"
echo "1. Review extracted content"
echo "2. Create supervisory compliance checklists"
echo "3. Add WSP templates"
echo "4. Commit to git"
echo ""
