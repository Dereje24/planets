# Common Commands

#### Accessing the Database Console from the Terminal
```
psql databasename -U your_username
```

#### Inspecting the Console
```
# List all databases:
\l

# List all database users
\du
# List all tables in the current database
\dt

# Connect to a specific database
\c databasename
```

#### Common Database Commands
```
CREATE DATABASE databasename;

# Creating tables. Constraints are optional.
CREATE TABLE table_name (col1_name col1_type [constraints], col2_name col2_type [constraints]);

# ---- Example: Creating table where the first column is type serial (auto increment) and has a primary key constraint
CREATE TABLE users (id SERIAL PRIMARY KEY, email VARCHAR(255));

# Adding rows
INSERT INTO table_name (col1, col2) VALUES (string1, string2);

# View all table rows
SELECT * FROM table_name;

# Change table display
\x
```

#### Intermediate Commands
```
# Adding relations
ALTER TABLE tablename ADD COLUMN related_col INTEGER;
ALTER TABLE tablename ADD FOREIGN KEY (related_col) REFERENCES related_table(related_col);

# Changing table structure
ALTER TABLE tablename ADD COLUMN col_name col_type;
ALTER TABLE tablename ALTER COLUMN col_name new_col_type new_col_constraints;
ALTER TABLE tablename RENAME COLUMN col_name new_name;
ALTER TABLE tablename DROP COLUMN col_name;

DROP TABLE table_name;
DROP DATABASE databasename;
```

#### Advanced Commands
```

```