# Company Database 
The project demonstrates the complete database development process starting from requirements analysis through conceptual and logical design to physical implementation using Oracle SQL.

---

## Project Objectives
- Analyze business requirements
- Design an ER Diagram
- Create the Logical Data Model
- Build the Physical Database Model
- Implement SQL tables
- Insert sample data
- Execute SQL queries

---

## Database Entities
- Company
- Manager
- Department
- Employee
- Product
- Customer
- Order

---

## Relationships
- Company → Managers (1:M)
- Manager → Departments (1:M)
- Department → Employees (1:M)
- Department → Products (1:M)
- Employee ↔ Orders (M:N)
- Product ↔ Orders (M:N)
- Customer → Orders (1:M)

---

## SQL Files

### Create Tables

```
SQL/create_tables.sql
```

### Insert Sample Data

```
SQL/insert_data.sql
```

### Sample Queries

```
SQL/queries.sql
```

---
## Team Members

- Raghad Oteef (GitHub: https://github.com/raghad-o)
- Wejdan Hakami (GitHub: https://github.com/wejdan-h)
- Basmh Ali
- Wajd Fuad
