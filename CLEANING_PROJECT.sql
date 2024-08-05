SELECT *
FROM layoffs;

CREATE TABLE layoffs_sataging
LIKE layoffs;

SELECT *
FROM layoffs_sataging;


INSERT layoffs_sataging
SELECT *
FROM layoffs;


SELECT *,
ROW_NUMBER()
OVER( PARTITION BY 
company,location,industry,total_laid_off,percentage_laid_off,
`date`,stage,country,funds_raised_millions) AS ROW_NUM
FROM layoffs_sataging;



WITH duplicate_entity as
(SELECT *,
ROW_NUMBER()
OVER( PARTITION BY 
company,location,industry,total_laid_off,percentage_laid_off,
`date`,stage,country,funds_raised_millions) AS ROW_NUM
FROM layoffs_sataging
)
SELECT *
FROM duplicate_entity
WHERE row_num > 1;



CREATE TABLE `layoffs_staging2`(
	`company` text,
    `location`text,
    `industry`text,
    `total_laid_off` int 	DEFAULT NULL,
    `percentage_laid_off` text,
    `date` text,
    `stage`text,
    `country` text,
    `fund_raised_millions` INT DEFAULT NULL,
    `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT *
FROM layoffs_staging2;

INSERT INTO layoffs_staging2
SELECT *,
ROW_NUMBER()
OVER( PARTITION BY 
company,location,industry,total_laid_off,percentage_laid_off,
`date`,stage,country,funds_raised_millions) AS ROW_NUM
FROM layoffs_sataging;


SELECT *
FROM layoffs_staging2;


DELETE 
FROM layoffs_staging2
where row_num >1;



SELECT *
FROM layoffs_staging2;

-- standardzing



SELECT company, TRIM(company)
FROM layoffs_staging2;


UPDATE layoffs_staging2
SET campany = TRIM(company);



SELECT * 
FROM layoffs_staging2
WHERE industry LIKE 'Crypto%';


UPDATE layoffs_staging2
SET industry =  'Crypto'
WHERE industry LIKE 'Crypto%';



SELECT distinct industry
FROM layoffs_staging2;


SELECT distinct location
FROM layoffs_staging2
ORDER BY 1;


SELECT distinct country, TRIM(TRAILING '.' FROM country)
FROM layoffs_staging2;




UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States';


SELECT `date`,
STR_TO_DATE(`date`, '%m/%d/%Y')
FROM layoffs_staging2;

--  DATE FORMATING TO MY SQL FRMT
UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');


SELECT `date`
FROM layoffs_staging2;


-- CONVERT TO THE DATE DATATYPE 
ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;



SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;




SELECT *
FROM layoffs_staging2
WHERE industry IS NULL 
or industry = '';







