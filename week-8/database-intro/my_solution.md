# Introduction to Databases

#### I worked on this challenge [by myself]
#### This challenge took me [.5] hours.

## SQL Queries

Paste the correct SQL queries for each of the following:

1. Select all data for all states:

    `SELECT * FROM states;`


2. Select all data for the regions:

    `SELECT * FROM regions;`


3. Select the `state_name` and `population` for all states:

    `SELECT state_name, population FROM states;`


4. Select the `state_name` and `population` for all states ordered by 
population. The most populous state should be at the top:

    `SELECT state_name, population FROM states ORDER BY population DESC;`


5. Select the 'state_name's for the states in region 7:

    `SELECT state_name FROM states WHERE region = 7;`


6. Select the 'state_names' and 'population_density' with a population density over 
50 ordered from least to most dense:

    `SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;`


7. Select all state_names for states with a population between 1 million and 1.5 million people:

    `SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;`


8. Select all state_names and region_id ordered by region in ascending order:

    `SELECT state_name, region_id FROM states ORDER BY region_id ASC;`


9. Select the 'region_name' for the regions with "Central" in the name:

    `SELECT region_name FROM regions WHERE region_name LIKE "%Central%";`


10. Select all of the region names and the state names in ascending order by regional id:

    `SELECT regions.region_name, states.state_name 
        FROM regions JOIN states 
        ON states.region_id = regions.id
        ORDER BY region_id ASC;`






## `persons` and `outfits` Schema
<!-- Include a link to your schema design here -->
![persons-outfits-schemas.png](https://github.com/BerniceChua/phase-0/blob/master/week-8/database-intro/persons-outfits-schemas.png)
persons-outfits-schemas.png






## Reflection
Release 7: Reflect
In the reflection section in your my_solution.md file, answer the following questions:

1. What are databases for?

    Databases are for storing information/data in a structured way that is 
    easy to search and access.  


2. What is a one-to-many relationship?

    "One-to-many" relationship means that 1 entity can have/own a lot of another entity.  


3. What is a primary key? What is a foreign key? How can you determine which is which?

    A primary key is as a unique identifier for each row or record in a table, which is 
    an entity's instance.  

    A foreign key is an attribute of an entity's instance that refers to a primary key of 
    another table.  

    Foreign keys and primary keys connect rows in two different tables.  

    You can determine which is a primary key or a foreign key because a primary key CANNOT 
    be repeated, but a foreign key could possibly be repeated.  


4. How can you select information out of a SQL database? What are some general guidelines for that?

    To select information from an SQL database, you need some keywords in your queries:

    `SELECT` = if using the asterisk * wildcard, the SELECT will select all the columns `FROM` a table.  
                if using the name of the column or some columns, it will select everything 
                under those chosen columns `FROM` a table.

    `SELECT DISTINCT` = like `SELECT`, but only showing one instance of a given value in a column.  

    There are some keywords that can be used to filter which data gets shown:

        `GROUP BY [column_name]` = groups together the rows of data that share the [column_name].  

        `ORDER BY [column_name]` = sorts data by ascending (lower to higher) with the `ASC` keyword, 
                    or descending order (higher to lower) with the `DESC` keyword.  

        `LIMIT` = by putting an number after it, the number is the maximum number of rows that get 
                    displayed.    

        `WHERE [column_name]` = keyword that can be used to filter which data gets shown.  It has these modifiers: 

            `BETWEEN [some_value] AND [another_value]` = displays data that falls within the 
                range of [some_value] and [another_value].  

            `LIKE` = displays data that matches a specific pattern.  
                - The underscore `_` is a wildcard for only 1 character.  
                - The percent `%` is a wildcard for 1 or more characters.  

        `AND` = can also be used to chain 2 or more filters/modifiers.  

    In general, the syntax of creating a SQL is standardized that the column & 
    table names are small letters and spaces are replaced by underscores, and 
    commands and keywords are in all-caps, and the whitespaces don't matter.  But 
    it is important to use a semi-colon at the end of query to show that it's the 
    end of the the query's statement.  

    The same rules apply to selecting or joining multiple tables, but instead of just the column name, 
    the column name is prefixed with the table name and a dot, like this: `table_name.column_name`.  
    And we will need the keyword `JOIN [table_name1] ON [table_name2]`.  
