{% macro create_reporter_role() %}
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'REPORTER')
BEGIN
    CREATE ROLE [REPORTER];
END;
{% endmacro %}
