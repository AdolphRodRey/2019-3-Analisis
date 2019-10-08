select 'hello world' as HelloWorld
, 1234 as MiNumero,
'yanomiro mi susuki' as [Bonjöur à ¢todos los おはよございます presentes]
;
-- esto es un comentario

select 238754 / 218743432
, 238754.0 / 218743432
, cast (238754 as float) / 218743432;

declare @x as int = 238754, @y as int = 218743432;
select cast (@x as float) / @y;

declare  @misterio as varchar (10) = '0';
declare  @misterio2 as char = '-20';
select @misterio2, cast (@misterio as bit) ;

declare @z as int = 2;
select
	case @z
		when 1 then 'hello'
		when 2 then 'world'
		else 'hello world'
	end as miPrimerCase;

declare @zz as int = 4;
declare @yy as int = 99;
select
	case 
		when @yy >= 4 and @yy <= 100 then 'hello'
		when @zz >= 200 and @yy <= 400  then 'world'
		else 'hello world'
	end as miSegundoCase;

-- operaciones sobre bits
declare @ab as int = 329875439;
-- ‭00010011101010010111111111101111‬
-- ‭00010011101010011111111111101111‬
-- ‭00010011101010010111011111101111‬
-- 00000000‭100101011101110011001011
-- ‭00010011101111011111111111101111‬  -- OR
--         ‭100000010101110011001011‬‬  -- AND
-- 11111111011010100010001100110100‬
declare @cd as int = 9821387;
select ~@cd, @ab | @cd, @ab & @cd,
 @ab | POWER (2, 15),
 @ab & ~POWER (2, 11);
 

 -- date
 select 
 convert(varchar (10),
	getdate(), 03),
 getdate(),
dateadd (month,-2874, getdate())
, datepart (millisecond,getdate()),
 datediff (SECOND,'2019-08-05 06:09:50.543', getdate());

 -- tabla
 declare @t as table 
 (a int primary key,
  b date not null,
  c varchar (10) DEFAULT 'hello'
  );
  insert into @t values (
  1, getdate(), 'adiós');
  insert into @t (a, b) values (2, 
  getdate ());
  select * from @t;


