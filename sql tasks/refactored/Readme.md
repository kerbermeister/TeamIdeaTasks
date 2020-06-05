In my opinion it would be better to store countries in a separate table.
Since Brand table has Many-to-one relationship to Country, this is the best approach to avoid database normalization violation.
I refactored the scheme creating script and query for task 2B accordingly.
Task 1, 2A, 2C queries remained the same.