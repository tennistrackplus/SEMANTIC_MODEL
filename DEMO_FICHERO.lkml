# Modelo semántico: DEMO_FICHERO
# Generado automáticamente desde el diseñador de modelos semánticos.

view: demo_fichero_fact {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.FACT_FINANCE` ;;

  measure: importe {
    type: sum
    sql: ${TABLE}.IMPORTE ;;
    value_format_name: auto
  }

}

view: ceco {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.DIM_CECO` ;;

  dimension: ceco {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CECO ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: ciudad {
    # tipo de origen: STRING
    sql: ${TABLE}.CIUDAD ;;
  }

  dimension: pais {
    # tipo de origen: STRING
    sql: ${TABLE}.PAIS ;;
  }

  dimension: region {
    # tipo de origen: STRING
    sql: ${TABLE}.REGION ;;
  }

  dimension: sociedad {
    # tipo de origen: STRING
    sql: ${TABLE}.SOCIEDAD ;;
  }

  dimension: division {
    # tipo de origen: STRING
    sql: ${TABLE}.DIVISION ;;
  }

  dimension: area {
    # tipo de origen: STRING
    sql: ${TABLE}.AREA ;;
  }

  # Jerarquía "GEO1":
  #   1. REGION
  #   2. PAIS
  #   3. CIUDAD
  #   4. CECO

}

view: cuenta {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.DIM_CUENTA` ;;

  dimension: cuenta {
    primary_key: yes
    # tipo de origen: INTEGER
    sql: ${TABLE}.CUENTA ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: nivel1 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL1 ;;
  }

  dimension: nivel2 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL2 ;;
  }

  dimension: nivel3 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL3 ;;
  }

  dimension: tipo {
    # tipo de origen: STRING
    sql: ${TABLE}.TIPO ;;
  }

  dimension: signo {
    # tipo de origen: INTEGER
    sql: ${TABLE}.SIGNO ;;
  }

  # Jerarquía "PL":
  #   1. NIVEL1
  #   2. NIVEL2
  #   3. NIVEL3
  #   4. CUENTA

}

view: escenario {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.FACT_FINANCE` ;;

  dimension: escenario {
    primary_key: yes
    sql: ${TABLE}.ESCENARIO ;;
  }

}

view: year {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.FACT_FINANCE` ;;

  dimension: year {
    primary_key: yes
    sql: ${TABLE}.YEAR ;;
  }

}

view: period {
  sql_table_name: `bigqueryexcelconnector.ANALYTICS.FACT_FINANCE` ;;

  dimension: period {
    primary_key: yes
    sql: ${TABLE}.PERIOD ;;
  }

}

explore: demo_fichero {
  view_name: demo_fichero_fact

  join: ceco {
    sql_on: ${demo_fichero_fact.CECO} = ${ceco.ceco} ;;
    relationship: many_to_one
  }

  join: cuenta {
    sql_on: ${demo_fichero_fact.CUENTA} = ${cuenta.cuenta} ;;
    relationship: many_to_one
  }

  join: escenario {
    sql_on: ${demo_fichero_fact.ESCENARIO} = ${escenario.escenario} ;;
    relationship: many_to_one
  }

  join: year {
    sql_on: ${demo_fichero_fact.YEAR} = ${year.year} ;;
    relationship: many_to_one
  }

  join: period {
    sql_on: ${demo_fichero_fact.PERIOD} = ${period.period} ;;
    relationship: many_to_one
  }

}