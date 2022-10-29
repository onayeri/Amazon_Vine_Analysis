-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

CREATE TABLE vine_table_over20votes (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

--- create table for votes 20 or more
SELECT *
INTO vine_table_over20
FROM vine_table
WHERE total_votes >= 20 

SELECT *
FROM vine_table_over20

--- number of helpful_votes divided by total_votes is equal to or greater than 50%

SELECT *
INTO vine_greater50
FROM vine_table_over20
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5

SELECT *
FROM vine_greater50

--- rows where a review was written as part of the Vine program (paid)

SELECT *
INTO vine_paid
FROM vine_greater50
WHERE vine= 'Y'

SELECT *
FROM vine_paid

--- rows where a review was written as part of the Vine program (unpaid)

SELECT *
INTO vine_unpaid
FROM vine_greater50
WHERE vine= 'N'

SELECT *
FROM vine_unpaid


-- Create a table for the number of total paid reviews
CREATE TABLE vine_total_paidreviews (
  paidtotal_reviews INT
);

--- Table with total data
INSERT INTO vine_total_paidreviews(paidtotal_reviews)
SELECT COUNT(vine)
FROM vine_paid;

SELECT * 
FROM vine_total_paidreviews;

--- total unpaid reviews
CREATE TABLE vine_total_unpaidreviews (
  unpaidtotal_reviews INT
);

--- Table with total data
INSERT INTO vine_total_unpaidreviews(unpaidtotal_reviews)
SELECT COUNT(vine)
FROM vine_unpaid;

SELECT *
FROM vine_total_unpaidreviews



--- table for the number of total 5 star paid reviews
CREATE TABLE total_five_star_paidreviews (
  total_fivestar_paidreviews INT
);

-- table with 5 star review count data
INSERT INTO total_five_star_paidreviews(total_fivestar_paidreviews)
SELECT COUNT(vine)
FROM vine_paid
WHERE star_rating = 5;

SELECT*
FROM total_five_star_paidreviews

---table for the number of total 5 star unpaid reviews
CREATE TABLE total_five_star_unpaidreviews (
  total_fivestar_unpaidreviews INT
);

-- table with 5 star review count data
INSERT INTO total_five_star_unpaidreviews(total_fivestar_unpaidreviews)
SELECT COUNT(vine)
FROM vine_unpaid
WHERE star_rating = 5;

SELECT*
FROM total_five_star_unpaidreviews




--- the percentage 5-star reviews are calculated for all Vine and non-Vine reviews 

CREATE TABLE total_five_star_paid (
  total_fivestar_paidreviews INT
);

INSERT INTO total_five_star_paid(total_fivestar_paidreviews)
SELECT COUNT(vine)
FROM vine_paid
WHERE star_rating = 5;

SELECT *
FROM total_five_star_paid

---unpaid 5 star total

CREATE TABLE total_five_star_unpaid (
  total_fivestar_unpaidreviews INT
);

INSERT INTO total_five_star_unpaid(total_fivestar_unpaidreviews)
SELECT COUNT(vine)
FROM vine_unpaid
WHERE star_rating = 5;

SELECT *
FROM total_five_star_unpaid






