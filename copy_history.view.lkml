view: copy_history {
  sql_table_name: ACCOUNT_USAGE.COPY_HISTORY ;;

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

  dimension: file_size {
    type: number
    sql: ${TABLE}."FILE_SIZE" ;;
  }

  dimension: first_error_character_pos {
    type: number
    sql: ${TABLE}."FIRST_ERROR_CHARACTER_POS" ;;
  }

  dimension: first_error_column_name {
    type: string
    sql: ${TABLE}."FIRST_ERROR_COLUMN_NAME" ;;
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

  dimension: pipe_catalog_name {
    type: string
    sql: ${TABLE}."PIPE_CATALOG_NAME" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }

  dimension_group: pipe_received {
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
    sql: ${TABLE}."PIPE_RECEIVED_TIME" ;;
  }

  dimension: pipe_schema_name {
    type: string
    sql: ${TABLE}."PIPE_SCHEMA_NAME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: row_parsed {
    type: number
    sql: ${TABLE}."ROW_PARSED" ;;
  }

  dimension: stage_location {
    type: string
    sql: ${TABLE}."STAGE_LOCATION" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_catalog_id {
    type: number
    sql: ${TABLE}."TABLE_CATALOG_ID" ;;
  }

  dimension: table_catalog_name {
    type: string
    sql: ${TABLE}."TABLE_CATALOG_NAME" ;;
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

  dimension: table_schema_id {
    type: number
    sql: ${TABLE}."TABLE_SCHEMA_ID" ;;
  }

  dimension: table_schema_name {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      file_name,
      first_error_column_name,
      table_name,
      table_schema_name,
      table_catalog_name,
      pipe_catalog_name,
      pipe_schema_name,
      pipe_name,
      tables.table_id,
      tables.table_name,
      tables.self_referencing_column_name,
      tables.user_defined_type_name
    ]
  }
}
