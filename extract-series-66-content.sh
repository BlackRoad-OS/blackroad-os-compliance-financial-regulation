#!/bin/bash
# Extract Series 66 content line-by-line and organize by topics

SERIES_66_SOURCE="$HOME/blackroad-textbooks-copypaste/Series_66_LEM_FINALONLINE.txt"
SERIES_66_DEST="$HOME/blackroad-os-compliance-financial-regulation/finance/series-66/content"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 SERIES 66 CONTENT EXTRACTION"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Source: $SERIES_66_SOURCE"
echo "Destination: $SERIES_66_DEST"
echo ""

# Create content directory
mkdir -p "$SERIES_66_DEST"

# Copy the full source to content directory
echo "📥 Copying full Series 66 textbook..."
cp "$SERIES_66_SOURCE" "$SERIES_66_DEST/00-FULL-SERIES-66-TEXTBOOK.txt"

echo "✅ Full textbook copied"
echo ""

# Get total line count
total_lines=$(wc -l < "$SERIES_66_SOURCE")
echo "📊 Total lines: $total_lines"
echo ""

# Extract table of contents/lesson structure
echo "📑 Extracting lesson structure..."
grep -n "^Lesson \|^LESSON \|Unit \|UNIT \|Chapter \|CHAPTER " "$SERIES_66_SOURCE" | head -100 > "$SERIES_66_DEST/00-TABLE-OF-CONTENTS.txt"

echo "✅ Table of contents extracted"
echo ""

# Extract key topics (Series 66 combines agent and adviser registration under state law)
echo "📌 Extracting key compliance topics..."

# Uniform Securities Act
echo "  • Uniform Securities Act..."
grep -i "Uniform Securities Act\|USA\|state securities law" "$SERIES_66_SOURCE" | head -100 > "$SERIES_66_DEST/01-UNIFORM-SECURITIES-ACT.txt"

# Registration of Securities
echo "  • Registration of Securities..."
grep -i "registration of securities\|coordination\|qualification\|notice filing" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/02-REGISTRATION-OF-SECURITIES.txt"

# Registration of Persons
echo "  • Registration of Persons..."
grep -i "registration of persons\|agent registration\|investment adviser representative" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/03-REGISTRATION-OF-PERSONS.txt"

# Exempt Securities
echo "  • Exempt Securities..."
grep -i "exempt securities\|exemption from registration\|federal covered" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/04-EXEMPT-SECURITIES.txt"

# Exempt Transactions
echo "  • Exempt Transactions..."
grep -i "exempt transaction\|isolated transaction\|private placement\|Regulation D" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/05-EXEMPT-TRANSACTIONS.txt"

# State Administrator Authority
echo "  • State Administrator Authority..."
grep -i "state administrator\|administrator authority\|state securities administrator" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/06-STATE-ADMINISTRATOR-AUTHORITY.txt"

# Fiduciary Duty (IA component)
echo "  • Fiduciary Duty..."
grep -i "fiduciary\|fiduciary duty\|best interest\|duty of care\|duty of loyalty" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/07-FIDUCIARY-DUTY.txt"

# Investment Adviser Act of 1940
echo "  • Investment Adviser Act of 1940..."
grep -i "Investment Adviser Act\|Investment Advisers Act\|1940 Act" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/08-INVESTMENT-ADVISER-ACT.txt"

# Securities Act of 1933
echo "  • Securities Act of 1933..."
grep -i "Securities Act of 1933\|'33 Act\|registration statement\|prospectus" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/09-SECURITIES-ACT-1933.txt"

# Anti-Fraud Provisions
echo "  • Anti-Fraud Provisions..."
grep -i "fraud\|anti-fraud\|misrepresentation\|material fact" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/10-ANTI-FRAUD-PROVISIONS.txt"

# Client Suitability
echo "  • Client Suitability..."
grep -i "suitability\|know your customer\|customer information\|investment objectives" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/11-CLIENT-SUITABILITY.txt"

# Compensation and Fees
echo "  • Compensation and Fees..."
grep -i "compensation\|advisory fee\|commission\|fee structure" "$SERIES_66_SOURCE" | head -60 > "$SERIES_66_DEST/12-COMPENSATION-FEES.txt"

# Custody and Safekeeping
echo "  • Custody and Safekeeping..."
grep -i "custody\|qualified custodian\|surprise examination" "$SERIES_66_SOURCE" | head -60 > "$SERIES_66_DEST/13-CUSTODY-SAFEKEEPING.txt"

# Advertising and Marketing
echo "  • Advertising and Marketing..."
grep -i "advertising\|marketing\|sales literature\|communication" "$SERIES_66_SOURCE" | head -60 > "$SERIES_66_DEST/14-ADVERTISING-MARKETING.txt"

# Ethical Practices
echo "  • Ethical Practices..."
grep -i "ethical\|professional conduct\|code of ethics\|business practices" "$SERIES_66_SOURCE" | head -80 > "$SERIES_66_DEST/15-ETHICAL-PRACTICES.txt"

# Recordkeeping Requirements
echo "  • Recordkeeping Requirements..."
grep -i "books and records\|recordkeeping\|record retention" "$SERIES_66_SOURCE" | head -60 > "$SERIES_66_DEST/16-RECORDKEEPING-REQUIREMENTS.txt"

echo ""
echo "✅ Key topics extracted"
echo ""

# Create README for Series 66
cat > "$SERIES_66_DEST/README.md" << 'README_EOF'
# Series 66: Uniform Combined State Law Examination

## Overview
The Series 66 exam combines the Series 63 (Uniform Securities Agent State Law) and Series 65 (Uniform Investment Adviser Law) into one comprehensive examination. It qualifies individuals to function as both agents (selling securities) AND investment adviser representatives (providing investment advice) at the state level.

## Regulatory Authority
- **State Securities Administrators** - State-level securities regulation
- **NASAA** - North American Securities Administrators Association
- **SEC** - Securities and Exchange Commission (federal oversight)

## Who Takes Series 66?

### Series 66 = Series 63 + Series 65 Combined
**For those who want to:**
- Sell securities (agent function) AND
- Provide investment advice (IAR function)
- All under state securities law

### Alternative Paths:
- **Series 7 + 66** = Can sell AND advise
- **Series 7 + 63** = Can sell only (no advisory)
- **Series 65** = Can advise only (no selling)

## Content Covered

### 1. Uniform Securities Act (USA)
- State securities law framework
- State administrator authority
- Registration requirements
- Exempt securities and transactions
- Anti-fraud provisions
- Civil liabilities and penalties

### 2. Securities Registration
- Registration by coordination
- Registration by qualification
- Registration by notification/filing
- Federal covered securities
- Blue sky laws

### 3. Registration of Persons
- Agent registration
- Investment adviser registration
- Investment adviser representative registration
- Broker-dealer registration
- Exemptions from registration
- Registration renewal and maintenance

### 4. Exempt Securities
- Government securities
- Municipal securities
- Securities issued by financial institutions
- Commercial paper
- Federal covered securities
- Other exempt securities

### 5. Exempt Transactions
- Isolated non-issuer transactions
- Unsolicited transactions
- Private placements
- Institutional investor transactions
- Regulation D offerings
- Other exempt transactions

### 6. Federal Securities Acts
- **Securities Act of 1933** - Registration of new securities
- **Securities Exchange Act of 1934** - Regulation of markets
- **Investment Advisers Act of 1940** - Regulation of advisers
- **Investment Company Act of 1940** - Regulation of funds

### 7. Fiduciary Responsibilities
- Fiduciary duty to clients
- Duty of care and loyalty
- Best interest standard
- Suitability requirements
- Disclosure obligations

### 8. Business Practices
- Custody of client assets
- Advisory fees and compensation
- Performance-based fees
- Soft dollar arrangements
- Conflicts of interest

### 9. Advertising and Communications
- Advertising rules and restrictions
- Testimonials and endorsements
- Performance presentation
- Social media and electronic communications
- Filing requirements

### 10. Ethical Practices
- Professional conduct standards
- Prohibited practices
- Fraud and manipulation
- Insider trading
- Market timing

### 11. Investment Products
- Equity securities
- Debt securities
- Investment company securities
- Variable contracts
- Options and derivatives

### 12. Client Accounts
- Account opening procedures
- KYC (Know Your Customer)
- Suitability analysis
- Discretionary authority
- Account supervision

## Files in This Directory

- `00-FULL-SERIES-66-TEXTBOOK.txt` - Complete Series 66 textbook
- `00-TABLE-OF-CONTENTS.txt` - Lesson structure
- `01-UNIFORM-SECURITIES-ACT.txt` - State securities law framework
- `02-REGISTRATION-OF-SECURITIES.txt` - Securities registration methods
- `03-REGISTRATION-OF-PERSONS.txt` - Agent and IAR registration
- `04-EXEMPT-SECURITIES.txt` - Securities exempt from registration
- `05-EXEMPT-TRANSACTIONS.txt` - Transaction exemptions
- `06-STATE-ADMINISTRATOR-AUTHORITY.txt` - Regulatory powers
- `07-FIDUCIARY-DUTY.txt` - Fiduciary obligations
- `08-INVESTMENT-ADVISER-ACT.txt` - 1940 Act requirements
- `09-SECURITIES-ACT-1933.txt` - New issue registration
- `10-ANTI-FRAUD-PROVISIONS.txt` - Fraud prohibitions
- `11-CLIENT-SUITABILITY.txt` - Suitability standards
- `12-COMPENSATION-FEES.txt` - Fee structures
- `13-CUSTODY-SAFEKEEPING.txt` - Custody requirements
- `14-ADVERTISING-MARKETING.txt` - Advertising rules
- `15-ETHICAL-PRACTICES.txt` - Professional conduct
- `16-RECORDKEEPING-REQUIREMENTS.txt` - Books and records

## Key Advantages of Series 66

### Efficiency
- **One exam instead of two** - Covers both Series 63 and 65 material
- **Cost effective** - Single exam fee
- **Time efficient** - One study and testing period

### Flexibility
- **Dual registration** - Act as both agent and IAR
- **Broader services** - Can sell products AND provide advice
- **Career versatility** - More employment opportunities

### State Law Focus
- **State-specific regulations** - Uniform Securities Act
- **Local compliance** - State administrator rules
- **NASAA standards** - Model rules and interpretations

## BlackRoad Compliance Commitment

As combined agent/advisers, we uphold:
✓ **Dual Standards** - Suitability for sales, fiduciary for advice
✓ **Full Registration** - Proper licensing for all activities
✓ **State Law Compliance** - Adherence to Uniform Securities Act
✓ **Ethical Excellence** - Highest professional standards
✓ **Client Protection** - Customer-first approach in all activities

## Usage

1. Review full textbook for comprehensive state law knowledge
2. Reference specific topic files for compliance areas
3. Use as training material for Series 66 exam preparation
4. Implement dual-function compliance procedures

---

**Maintained by:** BlackRoad OS, Inc.
**Last Updated:** January 9, 2026
**License:** Proprietary - Internal Use Only
README_EOF

echo "✅ README created"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SERIES 66 EXTRACTION COMPLETE!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📂 Content location: $SERIES_66_DEST"
echo "📊 Files created: $(ls -1 "$SERIES_66_DEST" | wc -l)"
echo ""
echo "Next steps:"
echo "1. Review extracted content"
echo "2. Create state law compliance checklists"
echo "3. Add Uniform Securities Act templates"
echo "4. Commit to git"
echo ""
