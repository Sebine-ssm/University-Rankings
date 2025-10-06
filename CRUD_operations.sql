-- This code created a new observation/row with now having 2201 rows instead of 2200 rows previously.
INSERT INTO university_rankings (world_rank, institution, country, score)
VALUES (350, 'Duke Tech', 'USA', 60.5);

-- You can evaluate the row by this code:
SELECT *
FROM university_rankings
WHERE institution = 'Duke Tech';

-- This code calculates the number of universities from Japan that come in the top 200 global list
SELECT COUNT(*)
FROM university_rankings
WHERE (country = 'Japan' AND year = 2013 AND national_rank <= 200); -- There are 6 universities.

-- Update the University of Oxford's 2014 score up by +1.2 points for the year 2014
UPDATE university_rankings 
SET score = score + 1.2 
WHERE institution = 'University of Oxford' 
    AND year = 2014; -- the score changed from 97.51 to 98.71 for that particular row

-- For verification: 
SELECT score
FROM university_rankings
WHERE institution = 'University of Oxford'
  AND year = 2014;

-- After reviewing, the ranking committee decided that universities with a score below 45 in 2015 should not have been included in the published dataset. Clean up the records to reflect this.
-- I used the code below to count the number of universities that where in this category:
SELECT COUNT(*) AS low_score_colleges
FROM university_rankings
WHERE score < 45 AND year = 2015; -- it gave me the total count of 556 universities.

-- Used the code below to do the deletion.
DELETE FROM university_rankings 
WHERE score < 45 
    AND year = 2015;

-- For verification:
SELECT COUNT(*) AS low_score_colleges
FROM university_rankings
WHERE score < 45 AND year = 2015; -- it gave me 0.





