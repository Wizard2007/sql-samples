1)
SELECT T.id, T.date 
FROM Operations AS T  
where T.id in 
  (SELECT  
     (SELECT MAX(id)  
	FROM Operations  
      WHERE date tmp.date  
        AND id < tmp.max_id ) AS max_id_prev 
   From
     (SELECT tT.date,
        (SELECT MAX(id) 
           FROM Operations  
         WHERE date = tT.date as DATE
        ) AS max_id
	FROM Operations as tT ) AS tmp
  )
ORDER BY date

2)
Select tmp.Moneyency,
  case  
    When tmp.Amount_ >1000 Then tmp.Amount_
    Else 0 end as Amount, tmp.Date
From 
(Select Money.kind_of_money as Moneyency, 
   (
     select sum(
       Operations.Sum_Operations   
     ) 
       From Operations
     Where Operations.id = Money.IDMoney 
       And Operations.date = ArtDay.day 
   ) as Amount_, 
   ArtDay.day as Date
   from ArtDay, Money
) as tmp 



3)
Select BankCard.number, Operationstype.Operations_type_name  
  From BankCard , Operations_Type 
Where not Exists(
  select top 1 1 
    from Operations 
  Where BankCard.id = id 
    and OperationsType.id = id)
Order By BankCard.number
)


4)
Select DataField 
  From (
    SELECT ID, Tmp_Field1, Tmp_Field2 , Tmp_Field3 , Tmp_Field4 , Tmp_Field5  
      From TmpTable 
    Where ID = 1
) as tmp
unpivot (
  DataField for fields in (
    ID, Tmp_Field1, Tmp_Field2, Tmp_Field3, Tmp_Field4 , Tmp_Field5  
) as unpvt
