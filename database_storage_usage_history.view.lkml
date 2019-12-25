view: database_storage_usage_history {
  sql_table_name: ACCOUNT_USAGE.DATABASE_STORAGE_USAGE_HISTORY ;;

  dimension: average_database_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_DATABASE_BYTES" ;;
  }

  dimension: average_failsafe_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_FAILSAFE_BYTES" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
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

  dimension_group: usage {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
