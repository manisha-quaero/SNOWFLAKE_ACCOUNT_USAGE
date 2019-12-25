view: login_history {
  sql_table_name: ACCOUNT_USAGE.LOGIN_HISTORY ;;

  dimension: client_ip {
    type: string
    sql: ${TABLE}."CLIENT_IP" ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}."EVENT_ID" ;;
  }

  dimension_group: event_timestamp {
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
    sql: ${TABLE}."EVENT_TIMESTAMP" ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}."EVENT_TYPE" ;;
  }

  dimension: first_authentication_factor {
    type: string
    sql: ${TABLE}."FIRST_AUTHENTICATION_FACTOR" ;;
  }

  dimension: is_success {
    type: string
    sql: ${TABLE}."IS_SUCCESS" ;;
  }

  dimension: related_event_id {
    type: number
    sql: ${TABLE}."RELATED_EVENT_ID" ;;
  }

  dimension: reported_client_type {
    type: string
    sql: ${TABLE}."REPORTED_CLIENT_TYPE" ;;
  }

  dimension: reported_client_version {
    type: string
    sql: ${TABLE}."REPORTED_CLIENT_VERSION" ;;
  }

  dimension: second_authentication_factor {
    type: string
    sql: ${TABLE}."SECOND_AUTHENTICATION_FACTOR" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
