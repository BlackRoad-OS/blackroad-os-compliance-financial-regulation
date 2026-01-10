#!/bin/bash
# Extract Series 65 content line-by-line and organize by topics

SERIES_65_SOURCE="$HOME/blackroad-textbooks-copypaste/9781078825320_Series 65_LEM_12E_r3_secured.txt"
SERIES_65_DEST="$HOME/blackroad-os-compliance-financial-regulation/finance/series-65/content"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 SERIES 65 CONTENT EXTRACTION"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Source: $SERIES_65_SOURCE"
echo "Destination: $SERIES_65_DEST"
echo ""

# Create content directory
mkdir -p "$SERIES_65_DEST"

# Copy the full source to content directory
echo "📥 Copying full Series 65 textbook..."
cp "$SERIES_65_SOURCE" "$SERIES_65_DEST/00-FULL-SERIES-65-TEXTBOOK.txt"

echo "✅ Full textbook copied"
echo ""

# Get total line count
total_lines=$(wc -l < "$SERIES_65_SOURCE")
echo "📊 Total lines: $total_lines"
echo ""

# Extract table of contents/lesson structure
echo "📑 Extracting lesson structure..."
grep -n "^Lesson \|^LESSON \|Unit \|UNIT \|Chapter \|CHAPTER " "$SERIES_65_SOURCE" | head -100 > "$SERIES_65_DEST/00-TABLE-OF-CONTENTS.txt"

echo "✅ Table of contents extracted"
echo ""

# Extract key topics (Series 65 is for Investment Advisers - focus on fiduciary content)
echo "📌 Extracting key compliance topics..."

# Investment Adviser Registration
echo "  • Investment Adviser Registration..."
grep -i "investment adviser registration\|Form ADV\|ADV Part\|RIA registration" "$SERIES_65_SOURCE" | head -100 > "$SERIES_65_DEST/01-INVESTMENT-ADVISER-REGISTRATION.txt"

# Fiduciary Duty and Standards
echo "  • Fiduciary Duty..."
grep -i "fiduciary\|fiduciary duty\|fiduciary standard\|duty of care\|duty of loyalty" "$SERIES_65_SOURCE" | head -100 > "$SERIES_65_DEST/02-FIDUCIARY-DUTY.txt"

# Form ADV
echo "  • Form ADV..."
grep -i "Form ADV\|ADV Part 1\|ADV Part 2\|brochure" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/03-FORM-ADV.txt"

# State Registration Laws
echo "  • State Registration Laws..."
grep -i "state registration\|Uniform Securities Act\|state administrator\|NASAA" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/04-STATE-REGISTRATION-LAWS.txt"

# Custody Rules
echo "  • Custody Rules..."
grep -i "custody\|custody rule\|surprise examination\|qualified custodian" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/05-CUSTODY-RULES.txt"

# Performance Advertising
echo "  • Performance Advertising..."
grep -i "performance advertising\|performance presentation\|advertising rules" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/06-PERFORMANCE-ADVERTISING.txt"

# Prohibited Practices
echo "  • Prohibited Practices..."
grep -i "prohibited\|fraud\|material misrepresentation\|churning\|scalping" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/07-PROHIBITED-PRACTICES.txt"

# Client Communications
echo "  • Client Communications..."
grep -i "disclosure\|client communication\|brochure delivery\|privacy" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/08-CLIENT-COMMUNICATIONS.txt"

# Fee Structures and Compensation
echo "  • Fee Structures..."
grep -i "advisory fee\|compensation\|fee structure\|performance fee\|fee disclosure" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/09-FEE-STRUCTURES.txt"

# Portfolio Management
echo "  • Portfolio Management..."
grep -i "portfolio management\|asset allocation\|investment strategy\|modern portfolio theory" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/10-PORTFOLIO-MANAGEMENT.txt"

# Investment Adviser Representatives (IAR)
echo "  • Investment Adviser Representatives..."
grep -i "investment adviser representative\|IAR\|supervised person" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/11-INVESTMENT-ADVISER-REPRESENTATIVES.txt"

# Ethical Practices and Professional Conduct
echo "  • Ethical Practices..."
grep -i "ethical\|professional conduct\|code of ethics\|conflicts of interest" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/12-ETHICAL-PRACTICES.txt"

# Books and Records
echo "  • Books and Records..."
grep -i "books and records\|recordkeeping\|required records" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/13-BOOKS-AND-RECORDS.txt"

# Investment Company Act
echo "  • Investment Company Act..."
grep -i "Investment Company Act\|1940 Act\|mutual fund\|open-end\|closed-end" "$SERIES_65_SOURCE" | head -80 > "$SERIES_65_DEST/14-INVESTMENT-COMPANY-ACT.txt"

# Economic Factors and Analysis
echo "  • Economic Factors..."
grep -i "economic\|inflation\|GDP\|monetary policy\|fiscal policy" "$SERIES_65_SOURCE" | head -60 > "$SERIES_65_DEST/15-ECONOMIC-FACTORS.txt"

echo ""
echo "✅ Key topics extracted"
echo ""

# Create README for Series 65
cat > "$SERIES_65_DEST/README.md" << 'README_EOF'
# Series 65: Uniform Investment Adviser Law Examination

## Overview
The Series 65 exam qualifies individuals to act as Investment Adviser Representatives (IARs). This exam is required by state securities administrators and focuses on investment adviser regulations, fiduciary duties, and ethical practices.

## Regulatory Authority
- **SEC** - Securities and Exchange Commission (federal regulation)
- **State Administrators** - State securities regulators
- **NASAA** - North American Securities Administrators Association

## Content Covered

### 1. Investment Adviser Registration
- Form ADV (Parts 1, 2A, 2B)
- Registration requirements
- Federal vs. state registration
- Exemptions from registration
- Notice filing requirements
- Registration process and renewal

### 2. Fiduciary Duty
- Fiduciary standard of care
- Duty of loyalty
- Duty of care
- Best interest of clients
- Disclosure of conflicts
- Suitability vs. fiduciary standard

### 3. Regulatory Framework
- Investment Advisers Act of 1940
- Uniform Securities Act
- State securities laws
- NASAA Model Rules
- SEC Release IA-1092

### 4. Client Relationships
- Client communications
- Disclosure requirements
- Privacy rules (Regulation S-P)
- Brochure delivery (ADV Part 2)
- Client agreements
- Termination procedures

### 5. Compensation and Fees
- Advisory fee structures
- Performance-based fees
- Soft dollar arrangements
- Referral fees
- Fee disclosure requirements
- Prohibition on assignment of contracts

### 6. Custody and Safekeeping
- Custody rule requirements
- Qualified custodians
- Surprise examinations
- Account statements
- Exceptions to custody rule

### 7. Advertising and Marketing
- Performance advertising rules
- Testimonials and endorsements
- Use of charts and graphs
- Hypothetical performance
- Prohibited advertising practices

### 8. Prohibited Practices
- Fraud and misrepresentation
- Churning
- Scalping
- Front running
- Market timing
- Insider trading

### 9. Ethical and Professional Standards
- Code of ethics
- Personal trading policies
- Conflicts of interest
- Material non-public information
- Gifts and entertainment

### 10. Investment Strategies
- Portfolio management
- Asset allocation
- Modern portfolio theory
- Risk tolerance assessment
- Investment policy statements
- Rebalancing strategies

### 11. Economic and Market Analysis
- Economic indicators
- Monetary and fiscal policy
- Business cycles
- Interest rate environment
- Inflation and deflation

### 12. Recordkeeping and Compliance
- Books and records requirements
- Record retention periods
- Annual compliance review
- Chief compliance officer
- Compliance manual

## Files in This Directory

- `00-FULL-SERIES-65-TEXTBOOK.txt` - Complete Series 65 textbook
- `00-TABLE-OF-CONTENTS.txt` - Lesson structure
- `01-INVESTMENT-ADVISER-REGISTRATION.txt` - Registration procedures
- `02-FIDUCIARY-DUTY.txt` - Fiduciary responsibilities
- `03-FORM-ADV.txt` - Form ADV requirements
- `04-STATE-REGISTRATION-LAWS.txt` - State securities laws
- `05-CUSTODY-RULES.txt` - Custody and safekeeping
- `06-PERFORMANCE-ADVERTISING.txt` - Advertising regulations
- `07-PROHIBITED-PRACTICES.txt` - Prohibited conduct
- `08-CLIENT-COMMUNICATIONS.txt` - Disclosure requirements
- `09-FEE-STRUCTURES.txt` - Compensation arrangements
- `10-PORTFOLIO-MANAGEMENT.txt` - Investment strategies
- `11-INVESTMENT-ADVISER-REPRESENTATIVES.txt` - IAR requirements
- `12-ETHICAL-PRACTICES.txt` - Professional conduct
- `13-BOOKS-AND-RECORDS.txt` - Recordkeeping requirements
- `14-INVESTMENT-COMPANY-ACT.txt` - Mutual fund regulations
- `15-ECONOMIC-FACTORS.txt` - Economic analysis

## Key Differences from Other Series

### vs. Series 7 (Broker-Dealer Representative)
- **Standard:** Fiduciary duty (Series 65) vs. Suitability (Series 7)
- **Compensation:** Fee-based (65) vs. Commission-based (7)
- **Role:** Ongoing advice (65) vs. Transactional (7)
- **Regulation:** Investment Advisers Act (65) vs. Securities Exchange Act (7)

### vs. Series 66 (Combined Exam)
- **Coverage:** Investment adviser only (65) vs. Agent + Adviser (66)
- **Use Case:** Only advising (65) vs. Both selling and advising (66)

## BlackRoad Compliance Commitment

As investment advisers, we uphold:
✓ **Fiduciary Standard First** - Client interests always come first
✓ **Full Disclosure** - Transparent fee structures and conflicts
✓ **Ethical Excellence** - Highest standards of professional conduct
✓ **Regulatory Compliance** - Strict adherence to all adviser regulations
✓ **Client Protection** - Privacy, custody, and safekeeping rules

## Usage

1. Review full textbook for comprehensive adviser knowledge
2. Reference specific topic files for compliance areas
3. Use as training material for Series 65 exam preparation
4. Implement fiduciary procedures based on requirements

---

**Maintained by:** BlackRoad OS, Inc.
**Last Updated:** January 9, 2026
**License:** Proprietary - Internal Use Only
README_EOF

echo "✅ README created"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SERIES 65 EXTRACTION COMPLETE!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📂 Content location: $SERIES_65_DEST"
echo "📊 Files created: $(ls -1 "$SERIES_65_DEST" | wc -l)"
echo ""
echo "Next steps:"
echo "1. Review extracted content"
echo "2. Create fiduciary compliance checklists"
echo "3. Add Form ADV templates"
echo "4. Commit to git"
echo ""
