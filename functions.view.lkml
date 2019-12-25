view: functions {
  sql_table_name: ACCOUNT_USAGE.FUNCTIONS ;;

  dimension: function_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."FUNCTION_ID" ;;
  }

  dimension: argument_signature {
    type: string
    sql: ${TABLE}."ARGUMENT_SIGNATURE" ;;
  }

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}."CHARACTER_MAXIMUM_LENGTH" ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}."CHARACTER_OCTET_LENGTH" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
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

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
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

  dimension: function_catalog {
    type: string
    sql: ${TABLE}."FUNCTION_CATALOG" ;;
  }

  dimension: function_catalog_id {
    type: number
    sql: ${TABLE}."FUNCTION_CATALOG_ID" ;;
  }

  dimension: function_definition {
    type: string
    sql: ${TABLE}."FUNCTION_DEFINITION" ;;
  }

  dimension: function_language {
    type: string
    sql: ${TABLE}."FUNCTION_LANGUAGE" ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}."FUNCTION_NAME" ;;
  }

  dimension: function_owner {
    type: string
    sql: ${TABLE}."FUNCTION_OWNER" ;;
  }

  dimension: function_schema {
    type: string
    sql: ${TABLE}."FUNCTION_SCHEMA" ;;
  }

  dimension: function_schema_id {
    type: number
    sql: ${TABLE}."FUNCTION_SCHEMA_ID" ;;
  }

  dimension: is_null_call {
    type: string
    sql: ${TABLE}."IS_NULL_CALL" ;;
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

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }

  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }

  dimension: volatility {
    type: string
    sql: ${TABLE}."VOLATILITY" ;;
  }

  measure: count {
    type: count
    drill_fields: [function_id, function_name]
  }
}
