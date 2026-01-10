# BlackRoad Compliance Checklists - Google Sheets Guide

## Overview
This repository contains **14 comprehensive compliance checklists** in CSV format, ready to import into Google Sheets for tracking and managing compliance across all BlackRoad financial and insurance licensing activities.

## 📋 Checklist Inventory

### Series 7 - General Securities Representative (5 checklists)
1. **01-daily-operations-checklist.csv** - 20 daily compliance tasks
2. **02-new-account-opening-checklist.csv** - 30 account opening procedures
3. **03-monthly-compliance-checklist.csv** - 20 monthly reviews
4. **04-annual-compliance-review.csv** - 25 annual compliance tasks
5. **05-series-7-exam-preparation.csv** - Study plan with hours and topics

### Series 24 - General Securities Principal (2 checklists)
1. **01-supervisory-daily-checklist.csv** - 15 supervisory tasks
2. **02-wsp-annual-review.csv** - 20 Written Supervisory Procedures items

### Series 65 - Uniform Investment Adviser Law (2 checklists)
1. **01-investment-adviser-daily-checklist.csv** - 12 daily IAR tasks
2. **02-form-adv-annual-update.csv** - 14 Form ADV update requirements

### Series 66 - Uniform Combined State Law (1 checklist)
1. **01-state-registration-compliance.csv** - 14 state law compliance tasks

### Series 79 - Investment Banking Representative (2 checklists)
1. **01-underwriting-deal-checklist.csv** - 15 underwriting deal steps
2. **02-regulation-m-compliance.csv** - 10 Regulation M requirements

### Life and Health Insurance (2 checklists)
1. **01-new-policy-application.csv** - 17 policy application steps
2. **02-annual-license-maintenance.csv** - 13 annual renewal tasks

### Master Tracker (1 checklist)
1. **MASTER-COMPLIANCE-TRACKER.csv** - Centralized license tracking

---

## 🚀 How to Import to Google Sheets

### Method 1: Direct Import
1. Go to [Google Sheets](https://sheets.google.com)
2. Click **File > Import**
3. Click **Upload** tab
4. Drag and drop or select CSV file
5. Import location: **Create new spreadsheet**
6. Separator type: **Comma**
7. Click **Import data**

### Method 2: Google Drive Upload
1. Upload CSV files to Google Drive
2. Right-click on CSV file
3. Select **Open with > Google Sheets**
4. File automatically converts to Google Sheets format

---

## 📊 Checklist Structure

### Standard CSV Format
All checklists follow this structure:
```csv
Task,Column2,Column3,Column4,Column5,Column6
Item 1,Data,Data,Data,Data,Data
Item 2,Data,Data,Data,Data,Data
```

### Common Columns
- **Task** - Description of compliance task
- **Frequency** - How often (Daily, Monthly, Annual)
- **Responsible Party** - Who is accountable
- **Status** - Completion status (use dropdown in Sheets)
- **Completed** - Date completed
- **Notes** - Additional information
- **Regulation Reference** - Specific rule/law citation

---

## ✅ Using Checklists in Google Sheets

### 1. Create Status Dropdown
1. Select the **Status** column
2. Click **Data > Data validation**
3. Criteria: **List of items**
4. Values: `Not Started, In Progress, Complete, N/A`
5. Click **Save**

### 2. Add Conditional Formatting
**Highlight completed tasks:**
1. Select Status column
2. Click **Format > Conditional formatting**
3. Format cells if: **Text contains**
4. Value: `Complete`
5. Formatting: Green background
6. Click **Done**

**Highlight pending tasks:**
1. Add another rule
2. Text contains: `Not Started`
3. Formatting: Red background

### 3. Add Checkbox Column
1. Insert column after Status
2. Label: **Done**
3. Select cells in column
4. Click **Insert > Checkbox**
5. Check boxes as tasks complete

### 4. Filter and Sort
1. Select header row
2. Click **Data > Create a filter**
3. Use filter dropdowns to:
   - Show only incomplete tasks
   - Filter by responsible party
   - Sort by deadline

---

## 📅 Recommended Usage

### Daily Operations
**Every Morning:**
1. Open daily operations checklist
2. Review each task
3. Check off completed items
4. Add notes for exceptions

**Every Evening:**
1. Verify all daily tasks complete
2. Document any issues
3. Escalate unresolved items

### Monthly Reviews
**First Week of Month:**
1. Open monthly compliance checklist
2. Assign responsible parties
3. Set deadlines for each task
4. Track completion weekly

**End of Month:**
1. Verify 100% completion
2. Generate compliance report
3. File documentation

### Annual Compliance
**Start of Q4 (October):**
1. Open annual compliance checklist
2. Create project plan with deadlines
3. Assign ownership of each task
4. Schedule regular status meetings

**Before Year-End:**
1. Complete all annual tasks
2. File required reports
3. Document for audit trail

---

## 🎯 Checklist Templates by Role

### Registered Representative (Series 7)
**Daily Use:**
- Daily operations checklist
- New account opening checklist (per account)

**Monthly:**
- Review monthly compliance tasks
- Update CE tracking

**Annual:**
- Complete annual compliance review
- Renew registrations

### Principal (Series 24)
**Daily Use:**
- Supervisory daily checklist
- Review rep activity

**Annual:**
- WSP annual review checklist
- Conduct branch inspections

### Investment Adviser Representative (Series 65)
**Daily Use:**
- Investment adviser daily checklist
- Client account monitoring

**Annual:**
- Form ADV annual update checklist
- Deliver updated brochures

### Investment Banker (Series 79)
**Per Deal:**
- Underwriting deal checklist
- Regulation M compliance

### Insurance Agent (Life & Health)
**Per Application:**
- New policy application checklist

**Annual:**
- License maintenance checklist
- CE completion tracking

---

## 🔗 Google Sheets Tips

### 1. Share with Team
1. Click **Share** button
2. Add team members
3. Set permissions:
   - **Editor** - Can modify
   - **Commenter** - Can add comments
   - **Viewer** - Read-only

### 2. Create Template
1. Import checklist
2. Format as desired
3. Click **File > Make a copy**
4. Use copy for actual work
5. Keep original as template

### 3. Link Multiple Sheets
1. Create master workbook
2. Import all checklists as separate tabs
3. Use formulas to summarize:
   ```
   =COUNTIF('Daily Operations'!D:D,"Complete")
   ```

### 4. Set Up Notifications
1. Click **Tools > Notification rules**
2. Choose: **Any changes are made**
3. Notify: **Me**
4. Frequency: **Daily summary**

### 5. Create Dashboard
1. Add "Dashboard" tab
2. Use formulas to pull data:
   - Total tasks: `=COUNTA(A:A)-1`
   - Completed: `=COUNTIF(D:D,"Complete")`
   - Percentage: `=B2/A2`
3. Add charts for visualization

---

## 📈 Advanced Features

### 1. Automated Reminders
Use Google Apps Script:
```javascript
function sendReminderEmail() {
  var sheet = SpreadsheetApp.getActiveSheet();
  var data = sheet.getDataRange().getValues();
  
  // Check for incomplete tasks
  // Send email if task overdue
}
```

### 2. Compliance Metrics
Track key metrics:
- **Daily completion rate**: % of daily tasks done on time
- **New account compliance**: % of accounts with complete documentation
- **Annual progress**: % of annual tasks complete
- **CE completion**: % of required CE hours completed

### 3. Audit Trail
**Enable Version History:**
1. Click **File > Version history > See version history**
2. Review all changes
3. Restore previous versions if needed

**Track Changes:**
- All edits are logged
- See who made changes
- Review change timestamps

---

## 🎓 Training and Onboarding

### New Employee Setup
1. Create copy of relevant checklists
2. Add employee name to "Responsible Party"
3. Schedule review sessions
4. Track completion

### Exam Preparation
1. Use Series X exam preparation checklist
2. Track study hours
3. Log practice test scores
4. Identify weak areas

### Audit Preparation
1. Review all compliance checklists
2. Ensure 100% completion
3. Gather supporting documentation
4. Create audit summary report

---

## 📂 File Organization

### Recommended Folder Structure in Google Drive
```
BlackRoad Compliance/
├── Master Tracker/
│   └── MASTER-COMPLIANCE-TRACKER (Google Sheet)
├── Series 7/
│   ├── Daily Operations
│   ├── Account Opening Template
│   ├── Monthly Compliance
│   ├── Annual Review
│   └── Exam Preparation
├── Series 24/
│   ├── Supervisory Checklist
│   └── WSP Review
├── Series 65/
│   ├── Daily Checklist
│   └── Form ADV Update
├── Series 66/
│   └── State Registration
├── Series 79/
│   ├── Underwriting Deals/
│   │   └── [Deal Name] Checklist
│   └── Regulation M
└── Life & Health/
    ├── Applications/
    │   └── [Client Name] Application
    └── License Maintenance
```

---

## ✅ Checklist Best Practices

### 1. Consistency
- Review checklists same time every day
- Use same naming conventions
- File completed checklists consistently

### 2. Documentation
- Add notes for all exceptions
- Include supporting document links
- Record decisions and rationale

### 3. Accountability
- Assign clear ownership
- Set specific deadlines
- Follow up on overdue items

### 4. Continuous Improvement
- Update checklists when regulations change
- Add items based on audit findings
- Remove obsolete requirements

### 5. Compliance Culture
- Make checklists accessible to all
- Encourage questions and feedback
- Celebrate compliance achievements

---

## 🚨 Regulatory References

Each checklist includes regulation references:
- **FINRA Rules** - Financial Industry Regulatory Authority
- **SEC Rules** - Securities and Exchange Commission
- **Advisers Act** - Investment Advisers Act of 1940
- **Bank Secrecy Act** - Anti-money laundering requirements
- **State Insurance Code** - State insurance regulations
- **NAIC** - National Association of Insurance Commissioners

---

## 📞 Support

For questions about:
- **Checklist content** - Review series README files
- **Regulatory requirements** - Consult compliance officer
- **Google Sheets features** - See [Google Sheets Help](https://support.google.com/docs/answer/6000292)

---

## 📝 Updates and Maintenance

**Checklist Review Schedule:**
- **Quarterly** - Review for accuracy
- **After regulation changes** - Update immediately
- **After audits** - Incorporate findings
- **Annually** - Comprehensive review

**Version Control:**
- Date all major revisions
- Document changes in Notes
- Maintain archived versions

---

**Created by:** BlackRoad OS, Inc.  
**Last Updated:** January 9, 2026  
**License:** Proprietary - Internal Use Only  
**Format:** CSV (Google Sheets Compatible)  

🖤🛣️ **BlackRoad: Compliance First, Always.**
