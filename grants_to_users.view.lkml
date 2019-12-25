view: grants_to_users {
  sql_table_name: ACCOUNT_USAGE.GRANTS_TO_USERS ;;

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

  dimension: granted_by {
    type: string
    sql: ${TABLE}."GRANTED_BY" ;;
  }

  dimension: granted_to {
    type: string
    sql: ${TABLE}."GRANTED_TO" ;;
  }

  dimension: grantee_name {
    type: string
    sql: ${TABLE}."GRANTEE_NAME" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [grantee_name]
  }
}
