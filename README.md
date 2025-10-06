# University-Rankings
Understanding University Rankings using SQLite Database System.

## Project Structure
- ```.devcontainer``` - The devcontainer file.
- ```.gitignore```- The file that tells Git to intentionally ignore specific files and directories within this repository. 
- ```README.md``` - The document that details the processes that went into this project.
- ```basic_analysis.sql``` - The file that has the SQL queries for performing basic analysis like calculating the total number of rows, the minimum, maximum and average values of 'quality_of_education', 'alumni_employment', 'quality_of_faculty', 'broad_impact', 'influence','patents' and 'publications' columns before and after performing the CRUD operations. 
- ```CRUD_operatins.sql``` - The file that has the SQL queries for performing CRUD (Create, Read, Update, and Delete) operations.
- ```university_database.db``` - The database that holds the information which we are analyzing. It has a table named 'university_rankings'. 

## Devcontainer

This project uses a Devcontainer installed and run locally which provides a development environment. Having a Devcontainer makes your life easier since it would create it's own environment on which you can work on the project without causing any dependency or software issues with your computer.

## How I setup my Devcontainer (For Windows Users)
- Created a folder in VS Code.
- Ctrl + Shift + P and searched for 'Dev Containers: Add Dev Container Configuration files'.
- Selected configuration of my choice and selected default features.
- The name of my Dev Container is 'Alpine'
- You will see a devcontainer.json file which has the JSON script of how your Dev Conatiner will work.
- Went into the JSON file and added this code:
```"name": "Alpine",
	// Or use a Dockerfile or Docker Compose file. More info: https://containers.dev/guide/dockerfile
	"image": "mcr.microsoft.com/devcontainers/base:alpine-3.20",
	"postCreateCommand": "apk update && apk add sqlite sqlite-libs", 

	// Features to add to the dev container. More info: https://containers.dev/features.
	// "features": {},
	"forwardPorts": [],

	"customizations": {},

	"remoteUser": "root"
																																			```

- Then clicked on the blue box on the bottom left corner and selected 'Rebuild Container' in the pop-up at the top. This process ensures that my Dev Contanier is setup every time I open the file and that it would connect with the database that I am working with. 

## Connecting to the Database

Write the code to connect with the SQLite database in the terminal.

```
sqlite3 university_database.db
								```
To get out of the sqlite terminal, type '.quit'

## About using SQLite

I chose SQLite Database because I have never worked with this database before. In my previous projects, I have used PostgreSQL and MySQL databases. I would love to explore more databases in the near future.  

## About the Project

This project is an introduction to working with SQLite Database. 

## Basic Analysis

Performed basic analysis by calculating the total number of rows, the minimun, maximum and average of 'quality_of_education', 'alumni_employment', 'quality_of_faculty', 'broad_impact', 'influence','patents' and 'publications' columns. These columns are expressed numerically. 

# Insights from the Basic Analysis operations (before doing the CRUD operations):

- There are a total of 2,200 rows in the university_rankings table. 
- The minimum, maximum and average values of quality of education from the listed universities are 1, 367, and 275.1 respectively.
- The minimum, maximum and average values of the number of alumns who are employed from the listed universities are 1, 567, and 357.117 respectively.
- The minimum, maximum and average values of quality of faculty from the listed universities are 1, 218, and 178.889 respectively.
- The minimum, maximum and average values of broad impact from the listed universities are 0.0, 1000.0, and 451.545 respectively.
- The minimum, maximum and average values of influence from the listed universities are 1, 991, and 459.798 respectively.
- The minimum, maximum and average values of number of patents from the listed universities are 1, 871, and 433.346 respectively.
- The minimum, maximum and average values of number of publications from the listed universities are 1, 1000, and 459.909 respectively.

## CRUD operations (C - Create, R - Read, U - Update and D- Delete)

A rule to remember: After you do the CRUD operations, always refresh the table to update the changes.

- ```CRUD_operatins.sql``` - This file conatins the codes for doing the CRUD operations performed for this project.
- The first CRUD operation was to insert an observation for 'Duke Tech'. This increased the number of rows to 2,201.
- The second CRUD operation was to calculate how many universities from Japan were listed in the top 200 list of best global universities in the year 2013, to which the output gave 6 universities.
- The third CRUD operation was to update the score of 'University of Oxford' by +1.2 points in the year 2014 and that row got updated.
- The fourth CRUD operation was to delete entries of universities with a score below 45 in 2015. This brought down the number of rows to 1,645, since it deleted 556 universities that fell into that category. 

# Insights from the Basic Analysis operations (after doing the CRUD operations):

- There are a total of 1,645 rows in the university_rankings table.
- The minimum, maximum and average values of quality of education from the listed universities are 1, 367, and 250.58 respectively.
- The minimum, maximum and average values of the number of alumns who are employed from the listed universities are 1, 567, and 311.75 respectively.
- The minimum, maximum and average values of quality of faculty from the listed universities are 1, 218, and 166.202 respectively.
- The minimum, maximum and average values of broad impact from the listed universities are 0.0, 1000.0, and 366.555 respectively.
- The minimum, maximum and average values of influence from the listed universities are 1, 987, and 380.391 respectively.
- The minimum, maximum and average values of number of patents from the listed universities are 1, 871, and 367.187 respectively.
- The minimum, maximum and average values of number of publications from the listed universities are 1, 1000, and 376.273 respectively.

