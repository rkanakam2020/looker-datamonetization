connection: "retailsol_bq_looker"
include: "/views/**/*.view" # include all the views
datagroup: retail_shared_demos_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_shared_demos_default_datagroup
explore: ltv_sol_input_sales {
  label: "(1) Orders, Items and Users"
  view_name: ltv_sol_input_sales
}
