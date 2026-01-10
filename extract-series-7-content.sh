#!/bin/bash
# Extract Series 7 content line-by-line and organize by topics

SERIES_7_SOURCE="$HOME/blackroad-textbooks-copypaste/9781078803731_Series_7_2E_LEM_REV6_secured.txt"
SERIES_7_DEST="$HOME/blackroad-os-compliance-financial-regulation/finance/series-7/content"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 SERIES 7 CONTENT EXTRACTION"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Source: $SERIES_7_SOURCE"
echo "Destination: $SERIES_7_DEST"
echo ""

# Create content directory
mkdir -p "$SERIES_7_DEST"

# Copy the full source to content directory
echo "📥 Copying full Series 7 textbook..."
cp "$SERIES_7_SOURCE" "$SERIES_7_DEST/00-FULL-SERIES-7-TEXTBOOK.txt"

echo "✅ Full textbook copied"
echo ""

# Get total line count
total_lines=$(wc -l < "$SERIES_7_SOURCE")
echo "📊 Total lines: $total_lines"
echo ""

# Extract table of contents/lesson structure
echo "📑 Extracting lesson structure..."
grep -n "^Lesson \|^LESSON \|Unit \|UNIT " "$SERIES_7_SOURCE" | head -100 > "$SERIES_7_DEST/00-TABLE-OF-CONTENTS.txt"

echo "✅ Table of contents extracted"
echo ""

# Create lesson breakdown script
cat > "$SERIES_7_DEST/extract-by-lesson.sh" << 'EXTRACT_EOF'
#!/bin/bash
# Extract individual lessons from Series 7 textbook

SOURCE_FILE="00-FULL-SERIES-7-TEXTBOOK.txt"
LESSON_DIR="lessons"

mkdir -p "$LESSON_DIR"

# Extract each lesson (will need to be customized based on actual structure)
echo "Extracting lessons..."
echo "Run manually with specific line numbers from TABLE-OF-CONTENTS"
EXTRACT_EOF

chmod +x "$SERIES_7_DEST/extract-by-lesson.sh"

echo "✅ Lesson extraction script created"
echo ""

# Extract key topics
echo "📌 Extracting key compliance topics..."

# FINRA Rules
echo "  • FINRA Rules..."
grep -i "FINRA Rule\|Rule [0-9]" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/01-FINRA-RULES.txt"

# SEC Rules
echo "  • SEC Rules..."
grep -i "SEC Rule\|Rule 10b\|Rule 144\|Regulation" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/02-SEC-RULES.txt"

# Registration Requirements
echo "  • Registration Requirements..."
grep -i "registration\|Form U4\|Form U5" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/03-REGISTRATION-REQUIREMENTS.txt"

# Fiduciary Duty
echo "  • Fiduciary Duty..."
grep -i "fiduciary\|best interest\|suitability" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/04-FIDUCIARY-DUTY.txt"

# Anti-Fraud Provisions
echo "  • Anti-Fraud Provisions..."
grep -i "fraud\|10b-5\|anti-fraud\|manipulat" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/05-ANTI-FRAUD.txt"

# KYC and AML
echo "  • KYC and AML..."
grep -i "know your customer\|KYC\|anti-money laundering\|AML" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/06-KYC-AML.txt"

# Options Trading
echo "  • Options Trading..."
grep -i "option\|call\|put\|strike price" "$SERIES_7_SOURCE" | head -100 > "$SERIES_7_DEST/07-OPTIONS-TRADING.txt"

# Municipal Securities
echo "  • Municipal Securities..."
grep -i "municipal\|muni\|MSRB" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/08-MUNICIPAL-SECURITIES.txt"

# Margin Accounts
echo "  • Margin Accounts..."
grep -i "margin\|Regulation T\|buying power" "$SERIES_7_SOURCE" | head -50 > "$SERIES_7_DEST/09-MARGIN-ACCOUNTS.txt"

# Corporate Securitiesecho "  • Corporate Securities..."
grep -i "common stock\|preferred stock\|bond\|corporate" "$SERIES_7_SOURCE" | head -100 > "$SERIES_7_DEST/10-CORPORATE-SECURITIES.txt"

echo ""
echo "✅ Key topics extracted"
echo ""

# Create README for Series 7
cat > "$SERIES_7_DEST/README.md" << 'README_EOF'
# Series 7: General Securities Representative

## Overview
The Series 7 exam, formally known as the General Securities Representative Qualification Examination, is required for individuals who wish to sell a broad range of securities products.

## Regulatory Authority
- **FINRA** - Financial Industry Regulatory Authority
- **SEC** - Securities and Exchange Commission

## Content Covered

### 1. Regulatory Framework
- FINRA rules and regulations
- SEC rules (10b-5, 144, Regulation T, etc.)
- Registration requirements (Form U4, Form U5)

### 2. Ethical Standards
- Fiduciary duty
- Suitability requirements
- Best interest standard
- Fair dealing principles

### 3. Securities Products
- Equity securities (common stock, preferred stock)
- Debt securities (corporate bonds, municipal bonds, government securities)
- Options (calls, puts, strategies)
- Investment company securities (mutual funds, ETFs)
- Variable contracts

### 4. Trading & Markets
- Market structure
- Order types
- Trading regulations
- Settlement procedures

### 5. Customer Accounts
- Account opening procedures
- KYC (Know Your Customer)
- Suitability analysis
- Account types (cash, margin, retirement)

### 6. Compliance & Operations
- AML (Anti-Money Laundering)
- Privacy regulations (Reg S-P)
- Recordkeeping requirements
- Supervision procedures

## Files in This Directory

- `00-FULL-SERIES-7-TEXTBOOK.txt` - Complete Series 7 textbook
- `00-TABLE-OF-CONTENTS.txt` - Lesson structure
- `01-FINRA-RULES.txt` - FINRA rules extracted
- `02-SEC-RULES.txt` - SEC rules extracted
- `03-REGISTRATION-REQUIREMENTS.txt` - Registration procedures
- `04-FIDUCIARY-DUTY.txt` - Fiduciary obligations
- `05-ANTI-FRAUD.txt` - Anti-fraud provisions
- `06-KYC-AML.txt` - Customer identification and AML
- `07-OPTIONS-TRADING.txt` - Options strategies and regulations
- `08-MUNICIPAL-SECURITIES.txt` - Municipal bond regulations
- `09-MARGIN-ACCOUNTS.txt` - Margin trading rules
- `10-CORPORATE-SECURITIES.txt` - Equity and debt securities

## BlackRoad Compliance Commitment

We are committed to:
✓ **Financial Compliance First** - Full FINRA/SEC adherence
✓ **Legal Compliance First** - Strict securities law compliance
✓ **Moral Compliance First** - Client interests always prioritized
✓ **Identity Verification** - Robust KYC/AML procedures

## Usage

1. Review full textbook for comprehensive understanding
2. Reference specific topic files for targeted compliance areas
3. Use as training material for Series 7 exam preparation
4. Implement compliance procedures based on regulations

---

**Maintained by:** BlackRoad OS, Inc.
**Last Updated:** January 9, 2026
README_EOF

echo "✅ README created"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ SERIES 7 EXTRACTION COMPLETE!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📂 Content location: $SERIES_7_DEST"
echo "📊 Files created: $(ls -1 "$SERIES_7_DEST" | wc -l)"
echo ""
echo "Next steps:"
echo "1. Review extracted content"
echo "2. Create compliance checklists"
echo "3. Add training materials"
echo "4. Commit to git"
echo ""
