view: metering_daily_history {
  sql_table_name: ACCOUNT_USAGE.METERING_DAILY_HISTORY ;;

  dimension: credits_adjustment_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_ADJUSTMENT_CLOUD_SERVICES" ;;
  }

  dimension: credits_billed {
    type: number
    sql: ${TABLE}."CREDITS_BILLED" ;;
  }

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  dimension: credits_used_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  dimension: credits_used_compute {
    type: number
    sql: ${TABLE}."CREDITS_USED_COMPUTE" ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;
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
