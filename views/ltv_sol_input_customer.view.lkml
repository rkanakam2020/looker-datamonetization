view: ltv_sol_input_customer {
  sql_table_name: `retail-shared-demos.cdp_ws_cs.ltv_sol_input_customer`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
