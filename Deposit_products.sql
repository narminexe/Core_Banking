create table cb_deposit_products (
id number generated always as identity primary key,
currency_id number,
product_name varchar2(100),
term number(4),
interest_rate number(10,2));


create or replace procedure cb_deposit_insert (
p_currency number,p_product varchar2, p_term varchar2, p_rate number) is
begin
  insert into cb_deposit_products(currency_id,product_name,term,interest_rate) values(p_currency,p_product,p_term,p_rate);
  end;
  
  commit;
  
  
  create or replace procedure cb_deposit_update (
p_id number, p_currency number default null, p_name varchar2 default null, p_term number default null, p_rate number default null) is
begin
  update cb_deposit_products set currency_id=nvl(p_currency,currency_id),
                                product_name=nvl(p_name,product_name),
                                term=nvl(p_term,term),
                                interest_rate=nvl(p_rate,interest_rate)
                        where id=p_id;
                        commit;
                        end;
                        
                        
                        
    begin
      cb_deposit_insert(1,'novruz emaneti',3,1.5);
    end;
    
    
    
    
    begin
      cb_deposit_update(1,p_name=>'Novruz emaneti');
    end;
    
    
    
