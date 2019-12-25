view: stages {
  sql_table_name: ACCOUNT_USAGE.STAGES ;;

  dimension: stage_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."STAGE_ID" ;;
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

  dimension: stage_catalog {
    type: string
    sql: ${TABLE}."STAGE_CATALOG" ;;
  }

  dimension: stage_catalog_id {
    type: number
    sql: ${TABLE}."STAGE_CATALOG_ID" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: stage_owner {
    type: string
    sql: ${TABLE}."STAGE_OWNER" ;;
  }

  dimension: stage_region {
    type: string
    sql: ${TABLE}."STAGE_REGION" ;;
  }

  dimension: stage_schema {
    type: string
    sql: ${TABLE}."STAGE_SCHEMA" ;;
  }

  dimension: stage_schema_id {
    type: number
    sql: ${TABLE}."STAGE_SCHEMA_ID" ;;
  }

  dimension: stage_type {
    type: string
    sql: ${TABLE}."STAGE_TYPE" ;;
  }

  dimension: stage_url {
    type: string
    sql: ${TABLE}."STAGE_URL" ;;
  }

  measure: count {
    type: count
    drill_fields: [stage_id, stage_name]
  }
}
