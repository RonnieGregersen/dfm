# The name of this view in Looker is "Reportingview"
view: reportingview {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Reporting.reportingview`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Afhentning" in Explore.

  dimension: afhentning {
    type: string
    sql: ${TABLE}.afhentning ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: afhentnings_placering {
    type: location
    sql_latitude: ${TABLE}.afhentnings_latitude ;;
    sql_longitude: ${TABLE}.afhentnings_longitude ;;
  }

  dimension: leverings_placering {
    type: location
    sql_latitude: ${TABLE}.leverings_latitude ;;
    sql_longitude: ${TABLE}.leverings_longitude ;;
  }

  dimension: kunde {
    type: string
    sql: ${TABLE}.kunde ;;
  }

  dimension: leveret_af {
    type: string
    sql: ${TABLE}.leveret_af ;;
  }

  dimension: levering {
    type: string
    sql: ${TABLE}.levering ;;
  }


  dimension: pris {
    type: number
    sql: ${TABLE}.pris ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
