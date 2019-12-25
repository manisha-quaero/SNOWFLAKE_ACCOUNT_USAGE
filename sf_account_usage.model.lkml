connection: "account_usage"

# include all the views
include: "*.view"

datagroup: sf_account_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sf_account_usage_default_datagroup

explore: automatic_clustering_history {
  join: tables {
    type: left_outer
    sql_on: ${automatic_clustering_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: columns {
  join: tables {
    type: left_outer
    sql_on: ${columns.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: copy_history {
  join: tables {
    type: left_outer
    sql_on: ${copy_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: data_transfer_history {}

explore: database_storage_usage_history {}

explore: databases {}

explore: file_formats {}

explore: functions {}

explore: grants_to_roles {}

explore: grants_to_users {}

explore: load_history {
  join: tables {
    type: left_outer
    sql_on: ${load_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: login_history {}

explore: materialized_view_refresh_history {
  join: tables {
    type: left_outer
    sql_on: ${materialized_view_refresh_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: metering_daily_history {}

explore: metering_history {}

explore: pipe_usage_history {
  join: pipes {
    type: left_outer
    sql_on: ${pipe_usage_history.pipe_id} = ${pipes.pipe_id} ;;
    relationship: many_to_one
  }
}

explore: pipes {}

explore: query_history {}

explore: referential_constraints {}

explore: replication_usage_history {}

explore: roles {}

explore: schemata {}

explore: sequences {}

explore: stage_storage_usage_history {}

explore: stages {}

explore: storage_usage {}

explore: table_constraints {
  join: tables {
    type: left_outer
    sql_on: ${table_constraints.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: table_storage_metrics {}

explore: tables {}

explore: users {}

explore: views {
  join: tables {
    type: left_outer
    sql_on: ${views.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_load_history {}

explore: warehouse_metering_history {}
