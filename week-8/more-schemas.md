### Release 2: Create a One-to-one Schema

Consider a situation in which you would use a one-to-one relationship. Then, create your own one-to-one schema using Schema Designer (Links to an external site.). Each table should have at least four fields (which can include created_at and updated_at seen above). When you finish your schema, take a screen shot, upload it to the imgs directory, and display it inline in your more-schemas.md file.

Explain why this relationship is a one-to-one to the best of your ability. 

![one-to-one-relationship.png](https://github.com/BerniceChua/phase-0/blob/master/week-8/imgs/one-to-one-relationship.png)

Example of one-to-one-relationship.  I thought of this example because (not counting metabolic processes, etc.) a person cannot be in different places and actively/focusedly/consciously doing different things at the exact same moment in a specific time.  (Unless someone invents time travel.)  






### Release 4: Refactor

Consider a grocery list. If you think about it, a grocery list has many items. Items can belong to many different grocery lists.

Model the relationship between grocery_lists and items using Schema Designer (Links to an external site.). Each table should have at least four fields in each. You should also model the join table. When you finish your schema, take a screen shot, upload it to the imgs directory in this challenge, and display it inline in your more-schemas.md file.

![many-to-many-relationship.png](https://github.com/BerniceChua/phase-0/blob/master/week-8/imgs/one-to-one-relationship.png)






### Release 6: Reflect
In the reflection section in your more-schemas.md file, answer the following questions:

1. What is a one-to-one database?

    A one-to-one database has data/entities where the primary keys of each table 
    corresponds to exactly one foreign key of another table.  


2. When would you use a one-to-one database? (Think generally, not in terms of the example you created).

    One-to-one databases are used when two things have a single relationship to one another. 
    Essentially, they are a pair. 


3. What is a many-to-many database?

    A many-to-many database has tables wherein one table has a primary key corresponds to many foreign keys 
    of another table, and that other table also has a primary key that corresponds to many foreign keys of 
    the first table.  It is made in such a way that their relationships to each other would be easier to 
    diagram with a join table (AKA cross-reference table) to connect the two independent tables, by keeping 
    track of the two ids (foreign keys).  

    Sometimes, this is called a "HasAndBelongsToMany (HABTM) relationship".  


4. When would you use a many-to-many database? (Think generally, not in terms of the example you created).

    Many-to-many databases are used when two entities/datas have a relationship wherein it has AND belongs
    to many others.  

    Example, I have 2 siblings, and at the same time, I belong to the two of them as their sibling also.  
    Or I have logins to different websites, but those same websites have other people who have distinct 
    logins to them also.  


5. What is confusing about database schemas? What makes sense?

    I am not confused by the idea of a "many-to-many" relationship, but I'm confused about how to 
    model it (this challenge was easy, because it was explicitly laid out, but if I were to think 
    of one by myself, it is difficult).  

    The idea/concept of a one-to-one relationship is not confusing either, but it took me a long time to 
    think of a valid real-life example of a one-to-one relationship.  