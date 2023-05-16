# The name of this view in Looker is "Deliveries"
view: deliveries {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Reporting.deliveries`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Kunde" in Explore.

  dimension: kunde {
    type: string
    sql: ${TABLE}.kunde ;;
  }

  dimension: leveret_af {
    type: string
    sql: ${TABLE}.leveret_af ;;
  }

  dimension: leverings_id {
    type: string
    sql: ${TABLE}.leveringsID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
