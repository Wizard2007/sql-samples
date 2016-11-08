# ruby-library ruby  garage
Write script for solve next task list (Database MS SQL)

1) List the penultimate operations for each day during the week
Operations table - table operations
Operations.date - Date of transaction
Operations.id - transaction identifier (values ​​are generated sequentially from the sequence, but there may be gaps in the value)

2) Calculate the amount of operations (Operations.Sum_Operations) at RUB, EUR, USD (Money.kind_of_money) for each day of the week.
But the display only the amount that exceeds 1000 per day (rub / usd / eur) in all other cases put down 0.
Operations table - table operations
Artday Table - tablitstsa with all dates (Artday.day contains the date)
Money Table - Reference rates (linked to Operations on IDMoney = id)
Operations.id - Currency operations
Operations.Sum_Operations - Transaction Amount
Operations.date - Date of transaction
Money.kind_of_money - Currency Name

3) List of operations with the types of cards that were not over them.
BankCard Table - Table Cards
Operations table - table operations
Operations_Type table - table operation types
BankCard.number - card number
Operationstype.Operations_type_name - the name of the type of operation
4) There is a table
 
create table TmpTable
(
  ID NUMBER,
  Tmp_Field1 NUMBER,
  Tmp_Field2 NUMBER,
  Tmp_Field3 NUMBER,
  Tmp_Field4 NUMBER,
  Tmp_Field5 NUMBER
)

It should be using sql-query display of the table row
representation in the vertical