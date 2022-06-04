# Two transaction trying to update same record at the same time

## Steps
- Create a table with three cols id, is_booked, user
- create five rows with id 1 to 5, is_booked 0, user null
- open two terminals try to update id 1 with user A and B
- try same on id 2 using select for update exclusive locking
- check .sql files