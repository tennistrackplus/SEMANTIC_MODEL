# Modelo semántico: TELCO
# Generado automáticamente al guardar el cubo en Draco Planning.
# draco: planning

view: telco_fact {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_TELCO` ;;

  measure: amount {
    type: sum
    sql: ${TABLE}.AMOUNT ;;
  }

  measure: kpi_value {
    type: sum
    sql: ${TABLE}.KPI_VALUE ;;
  }

}

view: channel {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_CHANNEL` ;;

  dimension: channel {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: desc_channel {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_CHANNEL ;;
  }

  dimension: channel_type {
    # tipo de origen: STRING
    sql: ${TABLE}.CHANNEL_TYPE ;;
  }

}

view: kpi {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_KPI` ;;

  dimension: kpi {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.KPI ;;
  }

  dimension: desc_kpi {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_KPI ;;
  }

  dimension: kpi_category {
    # tipo de origen: STRING
    sql: ${TABLE}.KPI_CATEGORY ;;
  }

  dimension: unit {
    # tipo de origen: STRING
    sql: ${TABLE}.UNIT ;;
  }

  dimension: direction {
    # tipo de origen: STRING
    sql: ${TABLE}.DIRECTION ;;
  }

  dimension: aggregation {
    # tipo de origen: STRING
    sql: ${TABLE}.AGGREGATION ;;
  }

  dimension: breakdown {
    # tipo de origen: STRING
    sql: ${TABLE}.BREAKDOWN ;;
  }

  # Jerarquía "KPIs":
  #   1. KPI_CATEGORY
  #   2. KPI

}

view: period {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_PERIOD` ;;

  dimension: period {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.PERIOD ;;
  }

  dimension: desc_period {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_PERIOD ;;
  }

  dimension: year {
    # tipo de origen: STRING
    sql: ${TABLE}.YEAR ;;
  }

  dimension: quarter {
    # tipo de origen: STRING
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: month {
    # tipo de origen: STRING
    sql: ${TABLE}.MONTH ;;
  }

  # Jerarquía "Calendar":
  #   1. YEAR
  #   2. QUARTER
  #   3. PERIOD

}

view: pl_line {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_PL_LINE` ;;

  dimension: pl_line {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.PL_LINE ;;
  }

  dimension: desc_pl_line {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_PL_LINE ;;
  }

  dimension: pl_group {
    # tipo de origen: STRING
    sql: ${TABLE}.PL_GROUP ;;
  }

  dimension: desc_pl_group {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_PL_GROUP ;;
  }

  dimension: pl_type {
    # tipo de origen: STRING
    sql: ${TABLE}.PL_TYPE ;;
  }

  dimension: pl_order {
    # tipo de origen: STRING
    sql: ${TABLE}.PL_ORDER ;;
  }

  # Jerarquía "P&L":
  #   1. PL_GROUP
  #   2. PL_LINE

}

view: product {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_PRODUCT` ;;

  dimension: product {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.PRODUCT ;;
  }

  dimension: desc_product {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_PRODUCT ;;
  }

  dimension: product_family {
    # tipo de origen: STRING
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }

  dimension: product_line {
    # tipo de origen: STRING
    sql: ${TABLE}.PRODUCT_LINE ;;
  }

  # Jerarquía "Products":
  #   1. PRODUCT_LINE
  #   2. PRODUCT_FAMILY
  #   3. PRODUCT

}

view: region {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_REGION` ;;

  dimension: region {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.REGION ;;
  }

  dimension: desc_region {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_REGION ;;
  }

  dimension: population_m {
    # tipo de origen: STRING
    sql: ${TABLE}.POPULATION_M ;;
  }

}

view: segment {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_SEGMENT` ;;

  dimension: segment {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: desc_segment {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_SEGMENT ;;
  }

  dimension: segment_group {
    # tipo de origen: STRING
    sql: ${TABLE}.SEGMENT_GROUP ;;
  }

  dimension: desc_segment_group {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_SEGMENT_GROUP ;;
  }

  # Jerarquía "Segments":
  #   1. SEGMENT_GROUP
  #   2. SEGMENT

}

view: version {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_VERSION` ;;

  dimension: version {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.VERSION ;;
  }

  dimension: desc_version {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_VERSION ;;
  }

}

view: view {
  sql_table_name: `draco-506807.DRACO_TEST_TELCO.DRACO_VIEW` ;;

  dimension: view {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.VIEW ;;
  }

  dimension: desc_view {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_VIEW ;;
  }

}

explore: telco {
  view_name: telco_fact

  join: channel {
    sql_on: ${telco_fact.CHANNEL} = ${channel.CHANNEL} ;;
    relationship: many_to_one
  }

  join: kpi {
    sql_on: ${telco_fact.KPI} = ${kpi.KPI} ;;
    relationship: many_to_one
  }

  join: period {
    sql_on: ${telco_fact.PERIOD} = ${period.PERIOD} ;;
    relationship: many_to_one
  }

  join: pl_line {
    sql_on: ${telco_fact.PL_LINE} = ${pl_line.PL_LINE} ;;
    relationship: many_to_one
  }

  join: product {
    sql_on: ${telco_fact.PRODUCT} = ${product.PRODUCT} ;;
    relationship: many_to_one
  }

  join: region {
    sql_on: ${telco_fact.REGION} = ${region.REGION} ;;
    relationship: many_to_one
  }

  join: segment {
    sql_on: ${telco_fact.SEGMENT} = ${segment.SEGMENT} ;;
    relationship: many_to_one
  }

  join: version {
    sql_on: ${telco_fact.VERSION} = ${version.VERSION} ;;
    relationship: many_to_one
  }

  join: view {
    sql_on: ${telco_fact.VIEW} = ${view.VIEW} ;;
    relationship: many_to_one
  }

}