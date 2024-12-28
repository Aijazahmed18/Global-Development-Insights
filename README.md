# Global Development Insights

This repository contains a SQL database and queries for analyzing global population and demographic data. It provides insights into various trends across countries, offering a resource for understanding development patterns.

## Project Overview

The project uses a single SQL table `countries` to store various demographic data points for different countries around the world. It then performs different queries to analyse and draw insightful data based on these. It is aimed to offer a comprehensive analysis of global population trends and demographic data.

## Features

- **Database Creation:** A SQL script to create a database named `analysis` with a table named `countries`.
- **Data Insertion:** An SQL script that inserts demographic data (population, growth rates, density, etc.) for various countries.
- **Insightful Queries:** A series of SQL queries to analyze the data and extract meaningful information:
  - **Basic Statistics:** Calculating average, max, and min for various demographic parameters like population, fertility rates, etc.
  - **Comparative Analysis:** Identifying countries with above/below average density, fertility, population change, etc.
  - **Categorization:** Classifying countries based on population size, density, fertility rates, migration patterns and growth.
  - **Correlation Analysis:** Identifying countries based on combined factors like high density with low fertility, population growth with high migration and more
  - **Ranking:** Ordering countries based on population size, median age, population change, migration and more.

## Database Schema

The `countries` table has the following columns:

| Column Name           | Data Type     | Description                                                      |
|-----------------------|---------------|------------------------------------------------------------------|
| `name`                | `VARCHAR(255)` | Primary Key, the name of the country                             |
| `population`          | `INT`         | Total population of the country                                |
| `percent_one_year_change`| `FLOAT`       | Population percentage change over one year                      |
| `population_change`   | `INT`         | Absolute population change                                      |
| `density_per_sq_km`   | `INT`         | Population density per square kilometer                        |
| `area_sq_km`          | `INT`         | Total area of the country in square kilometers                  |
| `net_migrants`        | `INT`         | Net number of migrants (inflows minus outflows)                  |
| `fertility_rate`      | `FLOAT`       | Average number of children a woman is expected to have          |
| `median_age`          | `FLOAT`       | Median age of the population                                    |
| `percent_of_world_pop`| `FLOAT`       | Country's population as a percentage of the world's population |

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone [repository URL]
    cd [repository-name]
    ```

2.  **Set up your Database:**
   - Make sure you have a SQL database system setup, like MySQL, PostgreSQL, etc.
   - Create the `analysis` database if it doesn't exist in the SQL system.
   - Use the SQL script provided in the repo to create the table and populate it with the data:
       ```sql
         -- Connect to your SQL system, eg. with mysql
           mysql -u [username] -p
         
         -- Run the sql script. Assuming the file is called database.sql
           source database.sql;
       ```

3.  **Run the Queries:**
    - Execute the SQL queries in your preferred SQL client. These are the SQL queries you have in this repo.

## Usage

### Basic Data Queries

-   **Largest Population:**
    ```sql
    SELECT 
        name AS "Country", 
        population AS "Population"
    FROM countries
    ORDER BY population DESC
    LIMIT 1;
    ```

-   **Smallest Population:**
    ```sql
    SELECT 
        name AS "Country", 
        population AS "Population"
    FROM countries
    ORDER BY population ASC
    LIMIT 1;
    ```

-   **Average Population:**
     ```sql
    SELECT 
        ROUND(AVG(population), 0) AS "Average Population"
    FROM countries;
    ```

### Analytical Queries

-   **Countries with Above-Average Density (Top 5):**
    ```sql
     SELECT 
        name AS "Country", 
        ROUND(density_per_sq_km, 2) AS "Density per sq km"
    FROM countries
    WHERE density_per_sq_km > (SELECT AVG(density_per_sq_km) FROM countries)
    ORDER BY density_per_sq_km DESC
    LIMIT 5;
    ```
-   **Countries with high fertility:**
    ```sql
    SELECT 
        name AS "Country", 
        ROUND(fertility_rate, 2) AS "Fertility Rate"
    FROM countries
    WHERE fertility_rate > 2.1
    ORDER BY fertility_rate DESC
    LIMIT 5;
    ```

### Categorical Queries

-   **Categorize Countries by Population Size:**
    ```sql
    SELECT
        name AS "Country",
        CASE
            WHEN population > 100000000 THEN 'High Population'
            WHEN population > 10000000 THEN 'Medium Population'
            ELSE 'Low Population'
        END AS "Population Category"
    FROM countries
    LIMIT 5;
    ```

-   **Categorize Countries by Population Density:**
    ```sql
    SELECT 
        name AS "Country",
        CASE
            WHEN density_per_sq_km > 500 THEN 'Very Dense'
            WHEN density_per_sq_km > 100 THEN 'Moderately Dense'
            ELSE 'Low Density'
        END AS "Density Category"
    FROM countries
    LIMIT 5;
    ```

-   **Categorize Countries by Population Growth Rate:**
    ```sql
     SELECT 
    name AS "Country",
   CASE
       WHEN percent_one_year_change > 2 THEN 'Rapid Growth'
        WHEN percent_one_year_change > 0 THEN 'Steady Growth'
       ELSE 'Decline'
   END AS "Growth Category"
FROM countries
LIMIT 5;
    ```

### Combined factors Queries

-   **Countries with high density and low fertility**
    ```sql
    SELECT
      name AS "Country",
      ROUND(density_per_sq_km, 2) AS "Density per sq km",
      ROUND(fertility_rate, 2) AS "Fertility Rate"
    FROM countries
    WHERE density_per_sq_km > 300 AND fertility_rate < 2
    LIMIT 5;
    ```
-   **Countries contributing significantly to world population but experiencing decline**
    ```sql
    SELECT
      name AS "Country",
      ROUND(percent_of_world_pop, 2) AS "World Pop %",
      ROUND(percent_one_year_change, 2) AS "Growth %"
    FROM countries
    WHERE percent_of_world_pop > 1 AND percent_one_year_change < 0
    LIMIT 5;
    ```

## Contributing

Contributions are welcome! Feel free to fork the repository, make changes, and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements
- Data from [worldometers](https://www.worldometers.info/world-population/population-by-country/)
