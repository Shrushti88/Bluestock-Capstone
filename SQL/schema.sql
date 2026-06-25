CREATE TABLE dim_fund (
    amfi_code INTEGER PRIMARY KEY,
    fund_house TEXT,
    scheme_name TEXT
);

CREATE TABLE fact_nav (
    amfi_code INTEGER,
    date DATE,
    nav REAL
);

CREATE TABLE fact_transactions (
    amfi_code INTEGER,
    transaction_type TEXT,
    amount_inr REAL
);

CREATE TABLE fact_performance (
    amfi_code INTEGER
);