Query 1 — Top 5 Fund Houses by Number of Schemes
query = """
SELECT fund_house,
       COUNT(*) AS total_schemes
FROM dim_fund
GROUP BY fund_house
ORDER BY total_schemes DESC
LIMIT 5
"""

pd.read_sql(query, engine)
Query 2 — Risk Category Distribution
query = """
SELECT risk_category,
       COUNT(*) AS total_funds
FROM dim_fund
GROUP BY risk_category
"""

pd.read_sql(query, engine)
Query 3 — Top 10 Funds by Sharpe Ratio
query = """
SELECT amfi_code,
       sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC
LIMIT 10
"""

pd.read_sql(query, engine)
Query 4 — Average NAV by Fund
query = """
SELECT amfi_code,
       AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC
LIMIT 10
"""

pd.read_sql(query, engine)
Query 5 — Transactions by State
query = """
SELECT state,
       SUM(amount_inr) AS total_amount
FROM fact_transactions
GROUP BY state
ORDER BY total_amount DESC
"""

pd.read_sql(query, engine)
Query 6 — Transactions by Type
query = """
SELECT transaction_type,
       COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY transaction_type
"""

pd.read_sql(query, engine)
Query 7 — Total Investment by Age Group
query = """
SELECT age_group,
       SUM(amount_inr) AS total_amount
FROM fact_transactions
GROUP BY age_group
"""

pd.read_sql(query, engine)
Query 8 — Funds by Category
query = """
SELECT category,
       COUNT(*) AS total_funds
FROM dim_fund
GROUP BY category
"""

pd.read_sql(query, engine)
Query 9 — Funds by Sub Category
query = """
SELECT sub_category,
       COUNT(*) AS total_funds
FROM dim_fund
GROUP BY sub_category
ORDER BY total_funds DESC
"""

pd.read_sql(query, engine)
Query 10 — Expense Ratio Analysis
query = """
SELECT fund_house,
       AVG(expense_ratio_pct) AS avg_expense_ratio
FROM dim_fund
GROUP BY fund_house
ORDER BY avg_expense_ratio DESC
LIMIT 10
"""

pd.read_sql(query, engine)
