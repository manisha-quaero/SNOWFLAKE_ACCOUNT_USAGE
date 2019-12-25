view: grants_to_roles {
  sql_table_name: ACCOUNT_USAGE.GRANTS_TO_ROLES ;;

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

  dimension: grant_option {
    type: yesno
    sql: ${TABLE}."GRANT_OPTION" ;;
  }

  dimension: granted_by {
    type: string
    sql: ${TABLE}."GRANTED_BY" ;;
  }

  dimension: granted_on {
    type: string
    sql: ${TABLE}."GRANTED_ON" ;;
  }

  dimension: granted_to {
    type: string
    sql: ${TABLE}."GRANTED_TO" ;;
  }

  dimension: grantee_name {
    type: string
    sql: ${TABLE}."GRANTEE_NAME" ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}."MODIFIED_ON" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: privilege {
    type: string
    sql: ${TABLE}."PRIVILEGE" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, grantee_name]
  }
}
