# Modelo semántico: METRO
# Generado automáticamente al guardar el cubo en Draco Planning.
# draco: planning

view: metro_fact {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_METRO` ;;

  measure: importe {
    type: sum
    sql: ${TABLE}.IMPORTE ;;
  }

  measure: valor_kpi {
    type: sum
    sql: ${TABLE}.VALOR_KPI ;;
  }

}

view: actividad {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_ACTIVIDAD` ;;

  dimension: actividad {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ACTIVIDAD ;;
  }

  dimension: desc_actividad {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ACTIVIDAD ;;
  }

  dimension: actividad_n1 {
    # tipo de origen: STRING
    sql: ${TABLE}.ACTIVIDAD_N1 ;;
  }

  dimension: desc_actividad_n1 {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ACTIVIDAD_N1 ;;
  }

  dimension: actividad_n2 {
    # tipo de origen: STRING
    sql: ${TABLE}.ACTIVIDAD_N2 ;;
  }

  dimension: desc_actividad_n2 {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ACTIVIDAD_N2 ;;
  }

  # Jerarquía "Actividades":
  #   1. ACTIVIDAD_N1
  #   2. ACTIVIDAD_N2
  #   3. ACTIVIDAD

}

view: ambito {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_AMBITO` ;;

  dimension: ambito {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.AMBITO ;;
  }

  dimension: desc_ambito {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_AMBITO ;;
  }

}

view: claco {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_CLACO` ;;

  dimension: claco {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CLACO ;;
  }

  dimension: desc_claco {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_CLACO ;;
  }

  dimension: grupo_claco {
    # tipo de origen: STRING
    sql: ${TABLE}.GRUPO_CLACO ;;
  }

  dimension: tipo_claco {
    # tipo de origen: STRING
    sql: ${TABLE}.TIPO_CLACO ;;
  }

  # Jerarquía "Grupos de coste":
  #   1. TIPO_CLACO
  #   2. GRUPO_CLACO
  #   3. CLACO

}

view: componente {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_COMPONENTE` ;;

  dimension: componente {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.COMPONENTE ;;
  }

  dimension: desc_componente {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_COMPONENTE ;;
  }

  dimension: actividad_cg {
    # tipo de origen: STRING
    sql: ${TABLE}.ACTIVIDAD_CG ;;
  }

  dimension: desc_actividad_cg {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ACTIVIDAD_CG ;;
  }

  # Jerarquía "Actividad y componente":
  #   1. ACTIVIDAD_CG
  #   2. COMPONENTE

}

view: deposito {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_DEPOSITO` ;;

  dimension: deposito {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.DEPOSITO ;;
  }

  dimension: desc_deposito {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_DEPOSITO ;;
  }

}

view: elemento_ami {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_ELEMENTO_AMI` ;;

  dimension: elemento_ami {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ELEMENTO_AMI ;;
  }

  dimension: desc_elemento_ami {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ELEMENTO_AMI ;;
  }

}

view: estacion {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_ESTACION` ;;

  dimension: estacion {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ESTACION ;;
  }

  dimension: desc_estacion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_ESTACION ;;
  }

}

view: kpi {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_KPI` ;;

  dimension: kpi {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.KPI ;;
  }

  dimension: desc_kpi {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_KPI ;;
  }

  dimension: categoria_kpi {
    # tipo de origen: STRING
    sql: ${TABLE}.CATEGORIA_KPI ;;
  }

  dimension: unidad {
    # tipo de origen: STRING
    sql: ${TABLE}.UNIDAD ;;
  }

  dimension: sentido {
    # tipo de origen: STRING
    sql: ${TABLE}.SENTIDO ;;
  }

  dimension: se_desglosa_por {
    # tipo de origen: STRING
    sql: ${TABLE}.SE_DESGLOSA_POR ;;
  }

  # Jerarquía "KPIs":
  #   1. CATEGORIA_KPI
  #   2. KPI

}

view: linea {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_LINEA` ;;

  dimension: linea {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.LINEA ;;
  }

  dimension: desc_linea {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_LINEA ;;
  }

  dimension: tension_v {
    # tipo de origen: STRING
    sql: ${TABLE}.TENSION_V ;;
  }

  dimension: longitud_km {
    # tipo de origen: STRING
    sql: ${TABLE}.LONGITUD_KM ;;
  }

}

view: modo_mtto_ami {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_MODO_MTTO_AMI` ;;

  dimension: modo_mtto_ami {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.MODO_MTTO_AMI ;;
  }

  dimension: desc_modo_mtto_ami {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_MODO_MTTO_AMI ;;
  }

}

view: periodo {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_PERIODO` ;;

  dimension: periodo {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: desc_periodo {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_PERIODO ;;
  }

  dimension: anio {
    # tipo de origen: STRING
    sql: ${TABLE}.ANIO ;;
  }

  dimension: trimestre {
    # tipo de origen: STRING
    sql: ${TABLE}.TRIMESTRE ;;
  }

  dimension: mes {
    # tipo de origen: STRING
    sql: ${TABLE}.MES ;;
  }

  # Jerarquía "Calendario":
  #   1. ANIO
  #   2. TRIMESTRE
  #   3. PERIODO

}

view: serie_tren {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_SERIE_TREN` ;;

  dimension: serie_tren {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.SERIE_TREN ;;
  }

  dimension: desc_serie_tren {
    # tipo de origen: STRING
    sql: ${TABLE}.DESC_SERIE_TREN ;;
  }

}

view: version {
  sql_table_name: `draco-506807.DRACO_TEST_METRO2.DRACO_VERSION` ;;

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

explore: metro {
  view_name: metro_fact

  join: actividad {
    sql_on: ${metro_fact.ACTIVIDAD} = ${actividad.ACTIVIDAD} ;;
    relationship: many_to_one
  }

  join: ambito {
    sql_on: ${metro_fact.AMBITO} = ${ambito.AMBITO} ;;
    relationship: many_to_one
  }

  join: claco {
    sql_on: ${metro_fact.CLACO} = ${claco.CLACO} ;;
    relationship: many_to_one
  }

  join: componente {
    sql_on: ${metro_fact.COMPONENTE} = ${componente.COMPONENTE} ;;
    relationship: many_to_one
  }

  join: deposito {
    sql_on: ${metro_fact.DEPOSITO} = ${deposito.DEPOSITO} ;;
    relationship: many_to_one
  }

  join: elemento_ami {
    sql_on: ${metro_fact.ELEMENTO_AMI} = ${elemento_ami.ELEMENTO_AMI} ;;
    relationship: many_to_one
  }

  join: estacion {
    sql_on: ${metro_fact.ESTACION} = ${estacion.ESTACION} ;;
    relationship: many_to_one
  }

  join: kpi {
    sql_on: ${metro_fact.KPI} = ${kpi.KPI} ;;
    relationship: many_to_one
  }

  join: linea {
    sql_on: ${metro_fact.LINEA} = ${linea.LINEA} ;;
    relationship: many_to_one
  }

  join: modo_mtto_ami {
    sql_on: ${metro_fact.MODO_MTTO_AMI} = ${modo_mtto_ami.MODO_MTTO_AMI} ;;
    relationship: many_to_one
  }

  join: periodo {
    sql_on: ${metro_fact.PERIODO} = ${periodo.PERIODO} ;;
    relationship: many_to_one
  }

  join: serie_tren {
    sql_on: ${metro_fact.SERIE_TREN} = ${serie_tren.SERIE_TREN} ;;
    relationship: many_to_one
  }

  join: version {
    sql_on: ${metro_fact.VERSION} = ${version.VERSION} ;;
    relationship: many_to_one
  }

}