create or replace package body myPackage as 
	function Generate_Salary(n1 in number)
    return number
    is
	
	   v_basic salary.basic%TYPE;
	   v_allowance salary.allowance%TYPE;
	   v_sid  employee_salary.sid%TYPE;
	   v_return number;
	
begin	
 
	select sid into  v_sid from  employee_salary where eid=n1;
	select  basic,allowance  into v_basic,v_allowance from  salary where sid=v_sid;

	
	v_return:=v_basic+v_allowance;

	return v_return;

EXCEPTION
	When no_data_found then
		DBMS_OUTPUT.PUT_LINE('No Data Found');
	When others then
		DBMS_OUTPUT.PUT_LINE('Something wrong happened');

end Generate_Salary; 

end myPackage; 
/