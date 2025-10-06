SELECT COUNT (*) AS total_rows
FROM university_rankings; 

SELECT MIN(quality_of_education) AS min_quality, MAX(quality_of_education) AS max_quality, AVG(quality_of_education) AS avg_quality                                                                     
FROM university_rankings;

SELECT MIN(alumni_employment) AS min_em, MAX(alumni_employment) AS max_em, AVG(alumni_employment)AS avg_em                      
FROM university_rankings;

SELECT MIN(quality_of_faculty) AS min_fac, MAX(quality_of_faculty) AS max_fac, AVG(quality_of_faculty)AS avg_fac                     
FROM university_rankings;

SELECT MIN(CAST(broad_impact AS FLOAT)) AS min_imp, MAX(CAST(broad_impact AS FLOAT)) AS max_imp, AVG(CAST(broad_impact AS FLOAT))AS avg_imp                     
FROM university_rankings;

SELECT MIN(influence) AS min_in, MAX(influence) AS max_in, AVG(influence)AS avg_in                     
FROM university_rankings;

SELECT MIN(patents) AS min_pat, MAX(patents) AS max_pat, AVG(patents)AS avg_pat                     
FROM university_rankings;

SELECT MIN(publications) AS min_publi, MAX(publications) AS max_publi, AVG(publications)AS avg_publi                     
FROM university_rankings;
