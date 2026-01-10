#!/bin/bash

# Series 79 Extraction Script
# Investment Banking Representative Exam Content
# Focus: Underwriting, M&A, Securities Offerings, IPO, Valuation

SERIES_79_SOURCE="$HOME/blackroad-textbooks-copypaste/9781078806442_S79_LEM_5E_REV_secured (1) 3.txt"
SERIES_79_DEST="$HOME/blackroad-os-compliance-financial-regulation/finance/series-79/content"

# Create destination directory
mkdir -p "$SERIES_79_DEST"

echo "📚 Extracting Series 79 (Investment Banking Representative) content..."
echo ""

# Copy full textbook
echo "  ➜ Copying full Series 79 textbook..."
cp "$SERIES_79_SOURCE" "$SERIES_79_DEST/00-FULL-SERIES-79-TEXTBOOK.txt"

# Extract table of contents
echo "  ➜ Extracting table of contents..."
grep -i "lesson\|unit\|chapter\|section" "$SERIES_79_SOURCE" | head -100 > "$SERIES_79_DEST/00-TABLE-OF-CONTENTS.txt"

# Extract topic-specific content

echo "  ➜ Extracting underwriting processes..."
grep -i "underwriting\|underwrite\|syndicate\|selling group\|firm commitment\|best efforts" "$SERIES_79_SOURCE" | head -120 > "$SERIES_79_DEST/01-UNDERWRITING-PROCESSES.txt"

echo "  ➜ Extracting securities offerings..."
grep -i "initial public offering\|IPO\|secondary offering\|follow-on offering\|shelf registration" "$SERIES_79_SOURCE" | head -100 > "$SERIES_79_DEST/02-SECURITIES-OFFERINGS.txt"

echo "  ➜ Extracting M&A content..."
grep -i "merger\|acquisition\|M&A\|takeover\|tender offer\|proxy contest" "$SERIES_79_SOURCE" | head -100 > "$SERIES_79_DEST/03-MERGERS-ACQUISITIONS.txt"

echo "  ➜ Extracting due diligence..."
grep -i "due diligence\|comfort letter\|legal opinion\|registration statement" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/04-DUE-DILIGENCE.txt"

echo "  ➜ Extracting valuation methods..."
grep -i "valuation\|DCF\|discounted cash flow\|comparable company\|precedent transaction\|P/E ratio" "$SERIES_79_SOURCE" | head -100 > "$SERIES_79_DEST/05-VALUATION-METHODS.txt"

echo "  ➜ Extracting corporate finance..."
grep -i "corporate finance\|capital structure\|debt financing\|equity financing\|WACC" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/06-CORPORATE-FINANCE.txt"

echo "  ➜ Extracting Securities Act of 1933..."
grep -i "Securities Act of 1933\|registration statement\|prospectus\|Form S-1\|Rule 144A\|Regulation S" "$SERIES_79_SOURCE" | head -100 > "$SERIES_79_DEST/07-SECURITIES-ACT-1933.txt"

echo "  ➜ Extracting Regulation M..."
grep -i "Regulation M\|stabilization\|penalty bid\|market manipulation\|distribution" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/08-REGULATION-M.txt"

echo "  ➜ Extracting private placements..."
grep -i "private placement\|Regulation D\|Rule 506\|accredited investor\|PIPE" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/09-PRIVATE-PLACEMENTS.txt"

echo "  ➜ Extracting municipal securities..."
grep -i "municipal\|muni\|general obligation\|revenue bond\|competitive bid\|negotiated sale" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/10-MUNICIPAL-SECURITIES.txt"

echo "  ➜ Extracting FINRA rules..."
grep -i "FINRA Rule\|Rule 5110\|Rule 5121\|Rule 2310\|corporate financing rule" "$SERIES_79_SOURCE" | head -80 > "$SERIES_79_DEST/11-FINRA-RULES.txt"

echo "  ➜ Extracting conflicts of interest..."
grep -i "conflict of interest\|Chinese wall\|information barrier\|material non-public" "$SERIES_79_SOURCE" | head -60 > "$SERIES_79_DEST/12-CONFLICTS-OF-INTEREST.txt"

echo "  ➜ Extracting analyst independence..."
grep -i "research analyst\|quiet period\|lock-up period\|analyst independence" "$SERIES_79_SOURCE" | head -60 > "$SERIES_79_DEST/13-ANALYST-INDEPENDENCE.txt"

echo "  ➜ Extracting recordkeeping..."
grep -i "books and records\|recordkeeping\|retention period\|FINRA Rule 4511" "$SERIES_79_SOURCE" | head -50 > "$SERIES_79_DEST/14-RECORDKEEPING-REQUIREMENTS.txt"

echo "  ➜ Extracting ethical practices..."
grep -i "ethical\|fiduciary\|disclosure\|suitability\|best execution" "$SERIES_79_SOURCE" | head -60 > "$SERIES_79_DEST/15-ETHICAL-PRACTICES.txt"

echo ""
echo "✅ SERIES 79 EXTRACTION COMPLETE!"
echo ""
echo "📂 Content location: $SERIES_79_DEST"
echo "📊 Files created:      $(ls -1 "$SERIES_79_DEST" | wc -l | xargs)"
echo "📄 Total lines:        $(cat "$SERIES_79_DEST"/*.txt | wc -l | xargs)"
echo ""
echo "Next steps:"
echo "1. Review extracted content"
echo "2. Create investment banking compliance checklists"
echo "3. Add underwriting templates and forms"
echo "4. Commit to git"
