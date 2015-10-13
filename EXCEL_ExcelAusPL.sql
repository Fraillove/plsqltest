
-- EXCEL AUS PL-SQL
--
-- Das PL Package f�r die Erzeugung von Excel steh auf ENTW zur Verf�gung.
-- =======================================================================


BEGIN
	ORA_EXCEL.new_document;
	ORA_EXCEL.add_sheet('Employees');
	ORA_EXCEL.query_to_sheet('select name, city from employees');
	
	ORA_EXCEL.add_sheet('Departments');
	ORA_EXCEL.query_to_sheet('select id, name from departments');

	ORA_EXCEL.save_to_file('EXPORT_DIR', example.xlsx');
END;


-- Hinwwis:
-- =======
-- Das PL l�sst noch mehr zu wie : Formatierung, ...
-- Das Handbuch ORA_EXCEL_reference_guide.pdf liegt in SVN vor 
