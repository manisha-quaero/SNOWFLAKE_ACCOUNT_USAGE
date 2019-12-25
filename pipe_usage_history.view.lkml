view: pipe_usage_history {
  sql_table_name: ACCOUNT_USAGE.PIPE_USAGE_HISTORY ;;

  dimension: bytes_inserted {
    type: string
    sql: ${TABLE}."BYTES_INSERTED" ;;
  }

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
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

  dimension: files_inserted {
    type: string
    sql: ${TABLE}."FILES_INSERTED" ;;
  }

  dimension: pipe_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PIPE_ID" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
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

  measure: count {
    type: count
    drill_fields: [pipe_name, pipes.pipe_id, pipes.pipe_name, pipes.notification_channel_name]
  }
}
