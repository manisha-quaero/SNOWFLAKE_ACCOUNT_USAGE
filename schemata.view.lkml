view: schemata {
  sql_table_name: ACCOUNT_USAGE.SCHEMATA ;;

  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
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

  dimension: default_character_set_catalog {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_CATALOG" ;;
  }

  dimension: default_character_set_name {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_NAME" ;;
  }

  dimension: default_character_set_schema {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_SCHEMA" ;;
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

  dimension: is_managed_access {
    type: string
    sql: ${TABLE}."IS_MANAGED_ACCESS" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
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

  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: schema_owner {
    type: string
    sql: ${TABLE}."SCHEMA_OWNER" ;;
  }

  dimension: sql_path {
    type: string
    sql: ${TABLE}."SQL_PATH" ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name, catalog_name, default_character_set_name]
  }
}
