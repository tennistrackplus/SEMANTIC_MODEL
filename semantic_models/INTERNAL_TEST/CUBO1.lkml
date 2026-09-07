# Modelo semántico: CUBO1
# Generado automáticamente al guardar el cubo en Draco Planning.

view: cubo1_fact {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_CUBO1` ;;

  measure: importe {
    type: count
    sql: ${TABLE}.IMPORTE ;;
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

view: dim1 {
  sql_table_name: `draco-506807.DRACO_INTERNAL_TEST.DRACO_DIM1` ;;

  dimension: dim1 {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.DIM1 ;;
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

  # Jerarquía "JERARQUIADIM1":
  #   1. NIVEL1
  #   2. NIVEL2
  #   3. DIM1

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

explore: cubo1 {
  view_name: cubo1_fact

  join: cuenta {
    sql_on: ${cubo1_fact.CUENTA} = ${cuenta.CUENTA} ;;
    relationship: many_to_one
  }

  join: dim1 {
    sql_on: ${cubo1_fact.DIM1} = ${dim1.DIM1} ;;
    relationship: many_to_one
  }

  join: escenario {
    sql_on: ${cubo1_fact.ESCENARIO} = ${escenario.ESCENARIO} ;;
    relationship: many_to_one
  }

}