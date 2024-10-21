create database unemployment_db;
    use unemployment_db;
    
    create table monthly_total(
    State text,
    Date date,
    Frequency text,
    Unemployment_Rate double,
    Employed int,
    Labour_Participation_Rate double);
    
    create table monthly_Rural(
    State text,
    Date date,
    Frequency text,
    Unemployment_Rate double,
    Employed int,
    Labour_Participation_Rate double);
    
    create table monthly_Urban(
    State text,
    Date date,
    Frequency text,
    Unemployment_Rate double,
    Employed int,
    Labour_Participation_Rate double);
    
    create table regionwise_unemployment(
    State text,
    Date date,
    Frequency text,
    Unemployment_Rate double,
    Employed int,
    Labour_Participation_Rate double,
    Region text,
    Longitude float,
    latitude float);
   
/*What is the highest unemployment rate recorded across all states?*/
SELECT State, Date, Unemployment_Rate
FROM monthly_total
ORDER BY Unemployment_Rate DESC
LIMIT 1;

/*What is the lowest unemployment rate recorded across all states?*/
SELECT State, Date, Unemployment_Rate
FROM monthly_total
ORDER BY Unemployment_Rate ASC
LIMIT 1;


/*Q1. What is the unemployment rate in India for past 5 years?(post covid and after covid to be precise)*/
select year(date),round(avg(Unemployment_Rate),2) as Unemployment_rate
from monthly_total
where State not like "india"
group by year(date)
order by year(date) asc;

/*Q2. What is the rural and urban unemloyment rate in last 5 years?*/
select year(u.date),round(avg(r.Unemployment_Rate),2) as Rural_Unemployment_Rate,round(avg(u.Unemployment_Rate),2) as Urban_Unemployment_Rate
from Monthly_Rural r inner join Monthly_Urban u on r.Date=u.Date
group by year(u.date)
order by year(u.date);

/*Q3. In india how are the states performing in past 5 year?*/
select State,round(avg(Unemployment_rate),2) as Unemployment_rate
from Monthly_Total
group by State
Order by Unemployment_rate desc;

/*Q4. With in the low performing state is rural or urban regions the major contributor to unemployment?*/
select r.state,re.Region,round(avg(u.Unemployment_Rate),2) as Urban_Unemployment_Rate,round(avg(r.Unemployment_Rate),2) as Rural_Unemployment_Rate
from Monthly_rural r inner join Monthly_Urban u on r.State=u.State inner join regionwise_unemployment re on u.State=re.State
group by r.state,re.Region
order by avg(u.Unemployment_Rate) Desc
limit 5;

/*Q5. Is the region wise showing same trend as the individual state performance?*/
select re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from regionwise_unemployment re inner join Monthly_Total t on re.State=t.State
group by region
order by avg(t.Unemployment_rate);

/*Q6. For each region what are the unemployment rates for states?*/
/*North*/
select t.State,re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from Monthly_Total t inner join regionwise_Unemployment re on t.State=re.State
where Region like "North"
group by t.State
order by avg(t.Unemployment_rate);

/*South*/
select t.State,re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from Monthly_Total t inner join regionwise_Unemployment re on t.State=re.State
where Region like "south"
group by t.State
order by avg(t.Unemployment_rate);

/*East*/
select t.State,re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from Monthly_Total t inner join regionwise_Unemployment re on t.State=re.State
where Region like "east"
group by t.State
order by avg(t.Unemployment_rate);

/*West*/
select t.State,re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from Monthly_Total t inner join regionwise_Unemployment re on t.State=re.State
where Region like "West"
group by t.State
order by avg(t.Unemployment_rate);

/*Northeast*/
select t.State,re.Region,round(avg(t.Unemployment_rate),2) as Unemployment_rate
from Monthly_Total t inner join regionwise_Unemployment re on t.State=re.State
where Region like "Northeast"
group by t.State
order by avg(t.Unemployment_rate);

/*Q7. Post covid which state has created more employment?*/
create view `2020`	 as
select year(date) as "2020",state as s1,round(avg(unemployment_rate),2) as unemployment_rate_2020
from monthly_total
where year(date)=2020
group by state
having state not like "india";

create view `2021`	 as
select year(date) as "2021",state as s2,round(avg(unemployment_rate),2) as unemployment_rate_2021
from monthly_total
where year(date)=2021
group by state
having state not like "india";

select s1, unemployment_rate_2020,unemployment_rate_2021,
round((unemployment_rate_2020-unemployment_rate_2021)/unemployment_rate_2020*100,2) as decrease_in_unemployment_rate
from`2020` inner join `2021` on `2020`.s1=`2021`.s2;









