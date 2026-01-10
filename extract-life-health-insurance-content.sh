#!/bin/bash

# Life and Health Insurance Extraction Script
# State Insurance Licensing Exam Content
# Focus: Life insurance, health insurance, annuities, state regulations

LH_SOURCE="$HOME/blackroad-textbooks-copypaste/9781475456448_LH_LEM_REV12_secured 2.txt"
LH_DEST="$HOME/blackroad-os-compliance-financial-regulation/insurance/life-and-health/content"

# Create destination directory
mkdir -p "$LH_DEST"

echo "📚 Extracting Life and Health Insurance License Exam content..."
echo ""

# Copy full textbook
echo "  ➜ Copying full Life and Health textbook..."
cp "$LH_SOURCE" "$LH_DEST/00-FULL-LIFE-HEALTH-TEXTBOOK.txt"

# Extract table of contents
echo "  ➜ Extracting table of contents..."
grep -i "unit\|chapter\|lesson\|section" "$LH_SOURCE" | head -150 > "$LH_DEST/00-TABLE-OF-CONTENTS.txt"

# Extract topic-specific content

echo "  ➜ Extracting life insurance products..."
grep -i "whole life\|term life\|universal life\|variable life\|permanent insurance\|temporary insurance" "$LH_SOURCE" | head -120 > "$LH_DEST/01-LIFE-INSURANCE-PRODUCTS.txt"

echo "  ➜ Extracting health insurance coverage..."
grep -i "health insurance\|medical insurance\|major medical\|hospital\|surgical coverage\|PPO\|HMO" "$LH_SOURCE" | head -120 > "$LH_DEST/02-HEALTH-INSURANCE-COVERAGE.txt"

echo "  ➜ Extracting disability insurance..."
grep -i "disability income\|disability insurance\|short-term disability\|long-term disability\|elimination period" "$LH_SOURCE" | head -100 > "$LH_DEST/03-DISABILITY-INSURANCE.txt"

echo "  ➜ Extracting long-term care..."
grep -i "long-term care\|LTC\|nursing home\|assisted living\|home health care" "$LH_SOURCE" | head -80 > "$LH_DEST/04-LONG-TERM-CARE.txt"

echo "  ➜ Extracting annuities..."
grep -i "annuity\|annuitant\|fixed annuity\|variable annuity\|immediate annuity\|deferred annuity" "$LH_SOURCE" | head -100 > "$LH_DEST/05-ANNUITIES.txt"

echo "  ➜ Extracting policy provisions..."
grep -i "incontestable\|grace period\|reinstatement\|nonforfeiture\|policy loan\|dividend" "$LH_SOURCE" | head -100 > "$LH_DEST/06-POLICY-PROVISIONS.txt"

echo "  ➜ Extracting beneficiaries..."
grep -i "beneficiary\|primary beneficiary\|contingent beneficiary\|revocable\|irrevocable" "$LH_SOURCE" | head -80 > "$LH_DEST/07-BENEFICIARIES.txt"

echo "  ➜ Extracting underwriting..."
grep -i "underwriting\|risk assessment\|insurability\|medical exam\|adverse selection" "$LH_SOURCE" | head -100 > "$LH_DEST/08-UNDERWRITING-RISK.txt"

echo "  ➜ Extracting premiums and reserves..."
grep -i "premium\|reserve\|cash value\|surrender value\|level premium\|flexible premium" "$LH_SOURCE" | head -80 > "$LH_DEST/09-PREMIUMS-RESERVES.txt"

echo "  ➜ Extracting riders and endorsements..."
grep -i "rider\|waiver of premium\|accidental death\|guaranteed insurability\|accelerated benefit" "$LH_SOURCE" | head -80 > "$LH_DEST/10-RIDERS-ENDORSEMENTS.txt"

echo "  ➜ Extracting Medicare and Social Security..."
grep -i "Medicare\|Social Security\|Part A\|Part B\|Part C\|Part D\|OASDI" "$LH_SOURCE" | head -80 > "$LH_DEST/11-MEDICARE-SOCIAL-SECURITY.txt"

echo "  ➜ Extracting state insurance regulations..."
grep -i "state insurance\|insurance commissioner\|insurance department\|state law\|unfair practice" "$LH_SOURCE" | head -100 > "$LH_DEST/12-STATE-INSURANCE-REGULATIONS.txt"

echo "  ➜ Extracting licensing requirements..."
grep -i "license\|licensing\|continuing education\|CE credit\|license renewal\|appointment" "$LH_SOURCE" | head -80 > "$LH_DEST/13-LICENSING-REQUIREMENTS.txt"

echo "  ➜ Extracting ethics and practices..."
grep -i "ethics\|ethical\|fiduciary\|disclosure\|replacement\|rebating\|twisting" "$LH_SOURCE" | head -100 > "$LH_DEST/14-ETHICS-PRACTICES.txt"

echo "  ➜ Extracting group insurance..."
grep -i "group insurance\|group life\|group health\|COBRA\|HIPAA\|certificate of insurance" "$LH_SOURCE" | head -80 > "$LH_DEST/15-GROUP-INSURANCE.txt"

echo "  ➜ Extracting taxation..."
grep -i "tax\|taxable\|tax-deferred\|tax-free\|death benefit\|modified endowment\|MEC" "$LH_SOURCE" | head -80 > "$LH_DEST/16-TAXATION.txt"

echo "  ➜ Extracting claims and settlement..."
grep -i "claim\|claims process\|proof of loss\|settlement option\|lump sum\|installment" "$LH_SOURCE" | head -60 > "$LH_DEST/17-CLAIMS-SETTLEMENT.txt"

echo "  ➜ Extracting employer plans..."
grep -i "401(k)\|403(b)\|pension\|retirement plan\|qualified plan\|ERISA" "$LH_SOURCE" | head -80 > "$LH_DEST/18-EMPLOYER-RETIREMENT-PLANS.txt"

echo ""
echo "✅ LIFE AND HEALTH INSURANCE EXTRACTION COMPLETE!"
echo ""
echo "📂 Content location: $LH_DEST"
echo "📊 Files created:      $(ls -1 "$LH_DEST" | wc -l | xargs)"
echo "📄 Total lines:        $(cat "$LH_DEST"/*.txt | wc -l | xargs)"
echo ""
echo "Next steps:"
echo "1. Review extracted insurance content"
echo "2. Create insurance compliance checklists"
echo "3. Add state-specific insurance regulations"
echo "4. Commit to git"
