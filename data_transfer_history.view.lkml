view: data_transfer_history {
  sql_table_name: ACCOUNT_USAGE.DATA_TRANSFER_HISTORY ;;

  dimension: bytes_transferred {
    type: number
    sql: ${TABLE}."BYTES_TRANSFERRED" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: source_cloud {
    type: string
    sql: ${TABLE}."SOURCE_CLOUD" ;;
  }

  dimension: source_region {
    type: string
    sql: ${TABLE}."SOURCE_REGION" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: target_cloud {
    type: string
    sql: ${TABLE}."TARGET_CLOUD" ;;
  }

  dimension: target_region {
    type: string
    sql: ${TABLE}."TARGET_REGION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
