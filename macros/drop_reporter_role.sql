{% macro drop_reporter_role() %}
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = 'REPORTER')
BEGIN
    DROP ROLE [REPORTER];
END;
{% endmacro %}
