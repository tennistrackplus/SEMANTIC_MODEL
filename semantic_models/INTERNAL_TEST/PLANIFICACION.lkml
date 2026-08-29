# Modelo semántico: PLANIFICACION
# Generado automáticamente al guardar el cubo en Draco Planning.

view: planificacion_fact {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_PLANIFICACION` ;;

  measure: importe {
    type: sum
    sql: ${TABLE}.IMPORTE ;;
  }

  measure: cantidad {
    type: sum
    sql: ${TABLE}.CANTIDAD ;;
  }

}

view: canal {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_CANAL` ;;

  dimension: canal {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CANAL ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: nivel1 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL1 ;;
  }

  # Jerarquía "CANAL":
  #   1. NIVEL1
  #   2. DESCRIPCION

}

view: centro_coste {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_CENTRO_COSTE` ;;

  dimension: centro_coste {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CENTRO_COSTE ;;
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

}

view: cuenta {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_CUENTA` ;;

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

  # Jerarquía "PL":
  #   1. NIVEL1
  #   2. NIVEL2
  #   3. NIVEL3
  #   4. CUENTA

}

view: escenario {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_ESCENARIO` ;;

  dimension: escenario {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ESCENARIO ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: tipo {
    # tipo de origen: STRING
    sql: ${TABLE}.TIPO ;;
  }

}

view: fecha {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_FECHA` ;;

  dimension: fecha {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.FECHA ;;
  }

  dimension: anio {
    # tipo de origen: INTEGER
    sql: ${TABLE}.ANIO ;;
  }

  dimension: trimestre {
    # tipo de origen: STRING
    sql: ${TABLE}.TRIMESTRE ;;
  }

  dimension: mes {
    # tipo de origen: INTEGER
    sql: ${TABLE}.MES ;;
  }

  dimension: mes_nombre {
    # tipo de origen: STRING
    sql: ${TABLE}.MES_NOMBRE ;;
  }

  dimension: periodo {
    # tipo de origen: STRING
    sql: ${TABLE}.PERIODO ;;
  }

  # Jerarquía "TIEMPO":
  #   1. ANIO
  #   2. TRIMESTRE
  #   3. PERIODO

}

view: producto {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_PRODUCTO` ;;

  dimension: producto {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.PRODUCTO ;;
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

  # Jerarquía "PRODUCTO":
  #   1. NIVEL1
  #   2. NIVEL2
  #   3. DESCRIPCION
  #   4. PRODUCTO

}

view: segmento {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_SEGMENTO` ;;

  dimension: segmento {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SEGMENTO ;;
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

}

view: sociedad {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_SOCIEDAD` ;;

  dimension: sociedad {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SOCIEDAD ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: pais {
    # tipo de origen: STRING
    sql: ${TABLE}.PAIS ;;
  }

  dimension: moneda {
    # tipo de origen: STRING
    sql: ${TABLE}.MONEDA ;;
  }

}

explore: planificacion {
  view_name: planificacion_fact

  join: canal {
    sql_on: ${planificacion_fact.CANAL} = ${canal.CANAL} ;;
    relationship: many_to_one
  }

  join: centro_coste {
    sql_on: ${planificacion_fact.CENTRO_COSTE} = ${centro_coste.CENTRO_COSTE} ;;
    relationship: many_to_one
  }

  join: cuenta {
    sql_on: ${planificacion_fact.CUENTA} = ${cuenta.CUENTA} ;;
    relationship: many_to_one
  }

  join: escenario {
    sql_on: ${planificacion_fact.ESCENARIO} = ${escenario.ESCENARIO} ;;
    relationship: many_to_one
  }

  join: fecha {
    sql_on: ${planificacion_fact.FECHA} = ${fecha.FECHA} ;;
    relationship: many_to_one
  }

  join: producto {
    sql_on: ${planificacion_fact.PRODUCTO} = ${producto.PRODUCTO} ;;
    relationship: many_to_one
  }

  join: segmento {
    sql_on: ${planificacion_fact.SEGMENTO} = ${segmento.SEGMENTO} ;;
    relationship: many_to_one
  }

  join: sociedad {
    sql_on: ${planificacion_fact.SOCIEDAD} = ${sociedad.SOCIEDAD} ;;
    relationship: many_to_one
  }

}