SELECT DATEADD(mm, DATEDIFF(mm, 0, GETDATE())-1, 0)  First_Day_Of_Previous_Month , DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) -0, 0))  Last_Day_Of_Previous_Month

SELECT DATEADD(mm, DATEDIFF(mm, 0, GETDATE())-12, 0)  First_Day_Of_Previous_Month , DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) -0, 0))  Last_Day_Of_Previous_Month

SELECT DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) -0, 0))  Last_Day_Of_Previous_Month


SELECT DATEADD(mm, DATEDIFF(mm, 0, dateadd(DD, -1, dateadd(YY,datediff(yy,0,GETDATE()),0)))-11, 0)  ,dateadd(DD, -1, dateadd(YY,datediff(yy,0,GETDATE()),0))

select   DATEADD(Year,-1*DateDiff(Year,getdate(),0),0),   DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,    DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)          ) +1, 0))   -- FirstMonth this year

select   DATEADD(MONTH,+1,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)),   DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+1, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0))   -- SecondMonth this year

select   DATEADD(MONTH,+2,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)),   DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+2, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0))   -- ThirdMonth this year


select   DATEADD(MONTH,+1,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)),   DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+1, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0))   -- SecondMonth this year


DATEADD(MONTH,+1,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0))
AND 
DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+1, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0)) 



SELECT *
FROM [billing].[fct_b2b_fixed_cube] WITH (NOLOCK) 
WHERE  DATE BETWEEN 
DATEADD(MONTH,+3,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0))
AND 
DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+3, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0))

-- 12th Month this year 
SELECT *
FROM [billing].[fct_b2b_fixed_cube] WITH (NOLOCK) 
WHERE  DATE BETWEEN 
DATEADD(MONTH,+11,DATEADD(Year,-1*DateDiff(Year,getdate(),0),0))
AND 
DATEADD (dd, -1, DATEADD(mm, DATEDIFF(mm, 0,   DATEADD(Month,+11, DATEADD(Year,-1*DateDiff(Year,getdate(),0),0)  )        ) +1, 0))
