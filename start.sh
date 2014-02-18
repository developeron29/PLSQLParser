export CLASSPATH=".:/usr/local/lib/antlr-4.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.2-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'


example:
declare
   -- global variables 
   num1 number := 95; 
   num2 number := 85; 
begin 
   dbms_output.put_line('outer variable num1: ' || num1);
   dbms_output.put_line('outer variable num2: ' || num2);
   declare 
      -- local variables
      num1 number := 195; 
      num2 number := 185; 
   begin 
      dbms_output.put_line('inner variable num1: ' || num1);
      dbms_output.put_line('inner variable num2: ' || num2);
   end; 
end;


CURSOR EXAMPLE
declare
   cursor customer_cur is
      select id, name, address 
      from customers;
   customer_rec customer_cur%rowtype;
begin
   open customer_cur;
   loop
      fetch customer_cur into customer_rec;
      exit when customer_cur%notfound;
      dbms_output.put_line(customer_rec.id || ' ' || customer_rec.name);
   end loop;
end;
