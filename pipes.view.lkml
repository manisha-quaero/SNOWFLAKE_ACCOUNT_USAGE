view: pipes {
  sql_table_name: ACCOUNT_USAGE.PIPES ;;

  dimension: pipe_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."PIPE_ID" ;;
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

  dimension: definition {
    type: string
    sql: ${TABLE}."DEFINITION" ;;
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

  dimension: is_autoingest_enabled {
    type: string
    sql: ${TABLE}."IS_AUTOINGEST_ENABLED" ;;
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

  dimension: notification_channel_name {
    type: string
    sql: ${TABLE}."NOTIFICATION_CHANNEL_NAME" ;;
  }

  dimension: pipe_catalog {
    type: string
    sql: ${TABLE}."PIPE_CATALOG" ;;
  }

  dimension: pipe_catalog_id {
    type: number
    sql: ${TABLE}."PIPE_CATALOG_ID" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }

  dimension: pipe_owner {
    type: string
    sql: ${TABLE}."PIPE_OWNER" ;;
  }

  dimension: pipe_schema {
    type: string
    sql: ${TABLE}."PIPE_SCHEMA" ;;
  }

  dimension: pipe_schema_id {
    type: number
    sql: ${TABLE}."PIPE_SCHEMA_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [pipe_id, pipe_name, notification_channel_name, pipe_usage_history.count]
  }
}
