create table cb_currency (
id number generated always as identity primary key,
name varchar2(30), code varchar2(30));


create or replace procedure cb_currency_insert (
p_name varchar2, p_code varchar2) is
begin
  insert into cb_currency(name,code) values(p_name,p_code);
  end;
  
  
create or replace procedure cb_currency_update
  (p_id number, p_name varchar2 default null, p_code varchar2 default null) is
  begin
  update cb_currency set name=nvl(p_name,name),
                        code=nvl(p_code,code)
                        where id=p_id;
                        end;
                        
                        
                    begin
                      --cb_currency_insert('azn',944);
                      cb_currency_update(1,p_name=>'AZN');
                      end;
SELECT * FROM cb_currency;