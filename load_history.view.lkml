view: load_history {
  sql_table_name: ACCOUNT_USAGE.LOAD_HISTORY ;;

  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
  }

  dimension: error_count {
    type: number
    sql: ${TABLE}."ERROR_COUNT" ;;
  }

  dimension: error_limit {
    type: number
    sql: ${TABLE}."ERROR_LIMIT" ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}."FILE_NAME" ;;
  }

  dimension: first_error_character_position {
    type: number
    sql: ${TABLE}."FIRST_ERROR_CHARACTER_POSITION" ;;
  }

  dimension: first_error_col_name {
    type: string
    sql: ${TABLE}."FIRST_ERROR_COL_NAME" ;;
  }

  dimension: first_error_line_number {
    type: number
    sql: ${TABLE}."FIRST_ERROR_LINE_NUMBER" ;;
  }

  dimension: first_error_message {
    type: string
    sql: ${TABLE}."FIRST_ERROR_MESSAGE" ;;
  }

  dimension_group: last_load {
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
    sql: ${TABLE}."LAST_LOAD_TIME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: row_parsed {
    type: number
    sql: ${TABLE}."ROW_PARSED" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      table_name,
      schema_name,
      catalog_name,
      file_name,
      first_error_col_name,
      tables.table_id,
      tables.table_name,
      tables.self_referencing_column_name,
      tables.user_defined_type_name
    ]
  }
}
