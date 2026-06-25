# Data Dictionary

## dim_fund

- amfi_code : Unique fund identifier
- fund_house : Mutual fund company
- scheme_name : Fund scheme name
- category : Fund category
- sub_category : Fund sub category
- expense_ratio_pct : Expense ratio percentage
- risk_category : Risk classification

## fact_nav

- amfi_code : Fund identifier
- date : NAV date
- nav : Net Asset Value

## fact_transactions

- transaction_type : SIP/Lumpsum/Redemption
- amount_inr : Transaction amount
- state : Investor state
- age_group : Investor age bucket

## fact_performance

- sharpe_ratio : Risk adjusted return
- alpha : Excess return
- beta : Market sensitivity