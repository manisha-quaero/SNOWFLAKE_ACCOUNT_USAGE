view: tables {
  sql_table_name: ACCOUNT_USAGE.TABLES ;;

  dimension: table_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."TABLE_ID" ;;
  }

  dimension: auto_clustering_on {
    type: string
    sql: ${TABLE}."AUTO_CLUSTERING_ON" ;;
  }

  dimension: bytes {
    type: number
    sql: ${TABLE}."BYTES" ;;
  }

  dimension: clustering_key {
    type: string
    sql: ${TABLE}."CLUSTERING_KEY" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: commit_action {
    type: string
    sql: ${TABLE}."COMMIT_ACTION" ;;
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

  dimension: is_insertable_into {
    type: string
    sql: ${TABLE}."IS_INSERTABLE_INTO" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
  }

  dimension: is_typed {
    type: string
    sql: ${TABLE}."IS_TYPED" ;;
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

  dimension: reference_generation {
    type: string
    sql: ${TABLE}."REFERENCE_GENERATION" ;;
  }

  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: self_referencing_column_name {
    type: string
    sql: ${TABLE}."SELF_REFERENCING_COLUMN_NAME" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_catalog_id {
    type: number
    sql: ${TABLE}."TABLE_CATALOG_ID" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_owner {
    type: string
    sql: ${TABLE}."TABLE_OWNER" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  dimension: table_schema_id {
    type: number
    sql: ${TABLE}."TABLE_SCHEMA_ID" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: user_defined_type_catalog {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_CATALOG" ;;
  }

  dimension: user_defined_type_name {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_NAME" ;;
  }

  dimension: user_defined_type_schema {
    type: string
    sql: ${TABLE}."USER_DEFINED_TYPE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      table_id,
      table_name,
      self_referencing_column_name,
      user_defined_type_name,
      automatic_clustering_history.count,
      columns.count,
      copy_history.count,
      load_history.count,
      materialized_view_refresh_history.count,
      table_constraints.count,
      views.count
    ]
  }
}
