SET SERVEROUTPUT ON

DECLARE
   v_FATURAMENTO_PREVISTO CLIENTE.FATURAMENTO_PREVISTO%type:= 12000;
   v_CATEGORIA CLIENTE.CATEGORIA%type;
BEGIN
   IF v_FATURAMENTO_PREVISTO < 10000 THEN
       v_CATEGORIA := 'PEQUENO';
   ELSIF v_FATURAMENTO_PREVISTO < 50000 THEN
       v_CATEGORIA := 'M�DIO';
   ELSIF v_FATURAMENTO_PREVISTO < 100000 THEN
       v_CATEGORIA := 'M�DIO GRANDE';   
   ELSE     
       v_CATEGORIA := 'GRANDE';
   END IF;    
   dbms_output.put_line('A Categoria � ' || v_CATEGORIA);
END;


