create database elec;
use elec;
show tables;

-- Displaying the Excle File
select * from for_sql;

-- Displaying the total num of seates won by BJP
select count(*) 
from for_sql
where `Leading Party`='BJP';


-- Displaying the total num of seates won by INC
select count(*) 
from for_sql
where `Leading Party`='INC';


-- Displaying the total num of seates lost by BJP
select count(*) 
from for_sql
where `Leading Party`!='BJP';


-- Displaying the total num of seates won by BJP in Maharashtra
select count(*) 
from for_sql
where `Leading Party`='BJP' and `State/UT`='Maharashtra';


-- Displaying the total num of seates won by INC in Maharashtra
select count(*) 
from for_sql
where `Leading Party`='INC' and `State/UT`='Maharashtra';


-- Counting Total Num of Votes Margin by which BJP won in India
select sum(`Margin`)
from for_sql
where `Leading Party`='BJP';

-- Counting Total Num of Votes Margin by which BJP won in Maharashtra
select sum(`Margin`)
from for_sql
where `Leading Party`='BJP' and `State/UT`='Maharashtra';

-- Counting Total Num of Votes Margin by which INC won in India
select sum(`Margin`)
from for_sql
where `Leading Party`='INC';

-- Counting Total Num of Votes Margin by which INC won in Maharashtra
select sum(`Margin`)
from for_sql
where `Leading Party`='INC' and `State/UT`='Maharashtra';



-- displaying all parties in Maharashtra
select distinct `Leading Party` as 'Party Name'
from for_sql
where `State/UT`='Maharashtra'
union
select distinct `Trailing Party`
from for_sql
where `State/UT`='Maharashtra';



-- Displaying total num of seates in UP
select count(`Leading Party`)
from for_sql
where `State/UT`='Uttar Pradesh';


select distinct `Leading Party`
from for_sql
where `State/UT`='Uttar Pradesh';
