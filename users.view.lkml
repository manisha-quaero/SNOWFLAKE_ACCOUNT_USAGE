view: users {
  sql_table_name: ACCOUNT_USAGE.USERS ;;

  dimension_group: bypass_mfa_until {
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
    sql: ${TABLE}."BYPASS_MFA_UNTIL" ;;
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
    sql: ${TABLE}."CREATED_ON" ;;
  }

  dimension: default_namespace {
    type: string
    sql: ${TABLE}."DEFAULT_NAMESPACE" ;;
  }

  dimension: default_role {
    type: string
    sql: ${TABLE}."DEFAULT_ROLE" ;;
  }

  dimension: default_warehouse {
    type: string
    sql: ${TABLE}."DEFAULT_WAREHOUSE" ;;
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
    sql: ${TABLE}."DELETED_ON" ;;
  }

  dimension: disabled {
    type: string
    sql: ${TABLE}."DISABLED" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."DISPLAY_NAME" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}."EXPIRES_AT" ;;
  }

  dimension: ext_authn_duo {
    type: string
    sql: ${TABLE}."EXT_AUTHN_DUO" ;;
  }

  dimension: ext_authn_uid {
    type: string
    sql: ${TABLE}."EXT_AUTHN_UID" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: has_password {
    type: yesno
    sql: ${TABLE}."HAS_PASSWORD" ;;
  }

  dimension: has_rsa_public_key {
    type: yesno
    sql: ${TABLE}."HAS_RSA_PUBLIC_KEY" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: last_success_login {
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
    sql: ${TABLE}."LAST_SUCCESS_LOGIN" ;;
  }

  dimension_group: locked_until {
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
    sql: ${TABLE}."LOCKED_UNTIL_TIME" ;;
  }

  dimension: login_name {
    type: string
    sql: ${TABLE}."LOGIN_NAME" ;;
  }

  dimension: must_change_password {
    type: yesno
    sql: ${TABLE}."MUST_CHANGE_PASSWORD" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: snowflake_lock {
    type: string
    sql: ${TABLE}."SNOWFLAKE_LOCK" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, login_name, display_name, first_name, last_name]
  }
}
