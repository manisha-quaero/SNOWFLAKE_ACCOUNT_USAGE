view: stage_storage_usage_history {
  sql_table_name: ACCOUNT_USAGE.STAGE_STORAGE_USAGE_HISTORY ;;

  dimension: average_stage_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_STAGE_BYTES" ;;
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
    drill_fields: []
  }
}
