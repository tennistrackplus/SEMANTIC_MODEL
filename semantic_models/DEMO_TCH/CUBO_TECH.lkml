# Modelo semántico: Cubo_Tech
# Generado automáticamente al guardar el cubo en Draco Planning.

view: cubo_tech_fact {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_CUBO_TECH` ;;

  measure: importe {
    type: sum
    sql: ${TABLE}.IMPORTE ;;
  }

}

view: epigrafe {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_EPIGRAFE` ;;

  dimension: epigrafe {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.EPIGRAFE ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

  dimension: bloque {
    # tipo de origen: STRING
    sql: ${TABLE}.BLOQUE ;;
  }

}

view: escenario_tech {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_ESCENARIO_TECH` ;;

  dimension: escenario_tech {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ESCENARIO_TECH ;;
  }

  dimension: periodicidad {
    # tipo de origen: STRING
    sql: ${TABLE}.PERIODICIDAD ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

view: escenario_corpo {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_ESCENARIO_CORPO` ;;

  dimension: escenario_corpo {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ESCENARIO_CORPO ;;
  }

  dimension: textos {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTOS ;;
  }

}

view: familia {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_FAMILIA` ;;

  dimension: familia {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.FAMILIA ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

view: fecha {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_FECHA` ;;

  dimension: fecha {
    primary_key: yes
    # tipo de origen: INTEGER
    sql: ${TABLE}.FECHA ;;
  }

}

view: measure {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_MEASURE` ;;

  dimension: measure {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.MEASURE ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

view: segmento {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_SEGMENTO` ;;

  dimension: segmento {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SEGMENTO ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

view: sociedad {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_SOCIEDAD` ;;

  dimension: sociedad {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SOCIEDAD ;;
  }

  dimension: moneda {
    # tipo de origen: STRING
    sql: ${TABLE}.MONEDA ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

  dimension: linea_negocio {
    # tipo de origen: STRING
    sql: ${TABLE}.LINEA_NEGOCIO ;;
  }

}

view: tipo_cambio {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_TIPO_CAMBIO` ;;

  dimension: tipo_cambio {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.TIPO_CAMBIO ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

view: tipo_dato {
  sql_table_name: `draco-506807.DRACO_DEMO_TCH.DRACO_TIPO_DATO` ;;

  dimension: tipo_dato {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.TIPO_DATO ;;
  }

  dimension: texto {
    # tipo de origen: STRING
    sql: ${TABLE}.TEXTO ;;
  }

}

explore: cubo_tech {
  view_name: cubo_tech_fact

  join: epigrafe {
    sql_on: ${cubo_tech_fact.EPIGRAFE} = ${epigrafe.EPIGRAFE} ;;
    relationship: many_to_one
  }

  join: escenario_tech {
    sql_on: ${cubo_tech_fact.ESCENARIO_TECH} = ${escenario_tech.ESCENARIO_TECH} ;;
    relationship: many_to_one
  }

  join: escenario_corpo {
    sql_on: ${cubo_tech_fact.ESCENARIO_CORPO} = ${escenario_corpo.ESCENARIO_CORPO} ;;
    relationship: many_to_one
  }

  join: familia {
    sql_on: ${cubo_tech_fact.FAMILIA} = ${familia.FAMILIA} ;;
    relationship: many_to_one
  }

  join: fecha {
    sql_on: ${cubo_tech_fact.FECHA} = ${fecha.FECHA} ;;
    relationship: many_to_one
  }

  join: measure {
    sql_on: ${cubo_tech_fact.MEASURE} = ${measure.MEASURE} ;;
    relationship: many_to_one
  }

  join: segmento {
    sql_on: ${cubo_tech_fact.SEGMENTO} = ${segmento.SEGMENTO} ;;
    relationship: many_to_one
  }

  join: sociedad {
    sql_on: ${cubo_tech_fact.SOCIEDAD} = ${sociedad.SOCIEDAD} ;;
    relationship: many_to_one
  }

  join: tipo_cambio {
    sql_on: ${cubo_tech_fact.TIPO_CAMBIO} = ${tipo_cambio.TIPO_CAMBIO} ;;
    relationship: many_to_one
  }

  join: tipo_dato {
    sql_on: ${cubo_tech_fact.TIPO_DATO} = ${tipo_dato.TIPO_DATO} ;;
    relationship: many_to_one
  }

}