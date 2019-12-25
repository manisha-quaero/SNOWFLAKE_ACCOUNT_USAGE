view: table_constraints {
  sql_table_name: ACCOUNT_USAGE.TABLE_CONSTRAINTS ;;

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: constraint_catalog {
    type: string
    sql: ${TABLE}."CONSTRAINT_CATALOG" ;;
  }

  dimension: constraint_catalog_id {
    type: number
    sql: ${TABLE}."CONSTRAINT_CATALOG_ID" ;;
  }

  dimension: constraint_id {
    type: number
    sql: ${TABLE}."CONSTRAINT_ID" ;;
  }

  dimension: constraint_name {
    type: string
    sql: ${TABLE}."CONSTRAINT_NAME" ;;
  }

  dimension: constraint_schema {
    type: string
    sql: ${TABLE}."CONSTRAINT_SCHEMA" ;;
  }

  dimension: constraint_schema_id {
    type: number
    sql: ${TABLE}."CONSTRAINT_SCHEMA_ID" ;;
  }

  dimension: constraint_type {
    type: string
    sql: ${TABLE}."CONSTRAINT_TYPE" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DELETED" ;;
  }

  dimension: enforced {
    type: string
    sql: ${TABLE}."ENFORCED" ;;
  }

  dimension: initially_deferred {
    type: string
    sql: ${TABLE}."INITIALLY_DEFERRED" ;;
  }

  dimension: is_deferrable {
    type: string
    sql: ${TABLE}."IS_DEFERRABLE" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_catalog_id {
    type: number
    sql: ${TABLE}."TABLE_CATALOG_ID" ;;
  }

  dimension: table_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."TABLE_ID" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  dimension: table_schema_id {
    type: number
    sql: ${TABLE}."TABLE_SCHEMA_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      constraint_name,
      table_name,
      tables.table_id,
      tables.table_name,
      tables.self_referencing_column_name,
      tables.user_defined_type_name
    ]
  }
}
