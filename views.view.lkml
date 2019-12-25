view: views {
  sql_table_name: ACCOUNT_USAGE.VIEWS ;;

  dimension: check_option {
    type: string
    sql: ${TABLE}."CHECK_OPTION" ;;
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

  dimension: insertable_into {
    type: string
    sql: ${TABLE}."INSERTABLE_INTO" ;;
  }

  dimension: is_secure {
    type: string
    sql: ${TABLE}."IS_SECURE" ;;
  }

  dimension: is_updatable {
    type: string
    sql: ${TABLE}."IS_UPDATABLE" ;;
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

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_catalog_id {
    type: number
    sql: ${TABLE}."TABLE_CATALOG_ID" ;;
  }

  dimension: table_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."TABLE_ID" ;;
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

  dimension: view_definition {
    type: string
    sql: ${TABLE}."VIEW_DEFINITION" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, tables.table_id, tables.table_name, tables.self_referencing_column_name, tables.user_defined_type_name]
  }
}
