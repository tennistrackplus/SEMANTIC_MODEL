# Modelo semántico: TESORERIA
# Generado automáticamente al guardar el cubo en Draco Planning.

view: tesoreria_fact {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_TESORERIA` ;;

  measure: payroll {
    type: sum
    sql: ${TABLE}.PAYROLL ;;
  }

  measure: capex_payments {
    type: sum
    sql: ${TABLE}.CAPEX_PAYMENTS ;;
  }

  measure: financing {
    type: sum
    sql: ${TABLE}.FINANCING ;;
  }

  measure: revenue {
    type: sum
    sql: ${TABLE}.REVENUE ;;
  }

  measure: cost_good_solids {
    type: sum
    sql: ${TABLE}.COST_GOOD_SOLIDS ;;
  }

  measure: personnel_expenses {
    type: sum
    sql: ${TABLE}.PERSONNEL_EXPENSES ;;
  }

  measure: other_operating_expenses {
    type: sum
    sql: ${TABLE}.OTHER_OPERATING_EXPENSES ;;
  }

  measure: availible_credit_expenses {
    type: sum
    sql: ${TABLE}.AVAILIBLE_CREDIT_EXPENSES ;;
  }

  measure: project_deficit {
    type: sum
    sql: ${TABLE}.PROJECT_DEFICIT ;;
  }

}

view: version {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_VERSION` ;;

  dimension: version {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.VERSION ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

view: account {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_ACCOUNT` ;;

  dimension: account {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.ACCOUNT ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: account_type {
    # tipo de origen: STRING
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }

  dimension: nivel1 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL1 ;;
  }

  dimension: nivel2 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL2 ;;
  }

  # Jerarquía "ACCOUNT_JER":
  #   1. NIVEL1
  #   2. NIVEL2
  #   3. ACCOUNT

}

view: date {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_DATE` ;;

  dimension: date {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.DATE ;;
  }

  dimension: mes {
    # tipo de origen: STRING
    sql: ${TABLE}.MES ;;
  }

  dimension: fecha {
    # tipo de origen: STRING
    sql: ${TABLE}.FECHA ;;
  }

  dimension: dia {
    # tipo de origen: NUMERIC
    sql: ${TABLE}.DIA ;;
  }

  dimension: fecha_ampliada {
    # tipo de origen: STRING
    sql: ${TABLE}.FECHA_AMPLIADA ;;
  }

  dimension: dia_ampliado {
    # tipo de origen: STRING
    sql: ${TABLE}.DIA_AMPLIADO ;;
  }

  dimension: semana_natural {
    # tipo de origen: NUMERIC
    sql: ${TABLE}.SEMANA_NATURAL ;;
  }

  dimension: semana {
    # tipo de origen: STRING
    sql: ${TABLE}.SEMANA ;;
  }

  dimension: trimestre_natural {
    # tipo de origen: NUMERIC
    sql: ${TABLE}.TRIMESTRE_NATURAL ;;
  }

  dimension: trimstre {
    # tipo de origen: STRING
    sql: ${TABLE}.TRIMSTRE ;;
  }

  dimension: semestre {
    # tipo de origen: STRING
    sql: ${TABLE}.SEMESTRE ;;
  }

  dimension: anio {
    # tipo de origen: NUMERIC
    sql: ${TABLE}.ANIO ;;
  }

  dimension: descripcion_anio {
    # tipo de origen: NUMERIC
    sql: ${TABLE}.DESCRIPCION_ANIO ;;
  }

  dimension: nombre_dia {
    # tipo de origen: STRING
    sql: ${TABLE}.NOMBRE_DIA ;;
  }

}

view: company_code {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_COMPANY_CODE` ;;

  dimension: company_code {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.COMPANY_CODE ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

view: bussines_line {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_BUSSINES_LINE` ;;

  dimension: bussines_line {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.BUSSINES_LINE ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: investment_category {
    # tipo de origen: STRING
    sql: ${TABLE}.INVESTMENT_CATEGORY ;;
  }

}

view: vendor_customer {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_VENDOR_CUSTOMER` ;;

  dimension: vendor_customer {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.VENDOR_CUSTOMER ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

view: cost_center {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_COST_CENTER` ;;

  dimension: cost_center {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.COST_CENTER ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

view: cash_flow_item {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_CASH_FLOW_ITEM` ;;

  dimension: cash_flow_item {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CASH_FLOW_ITEM ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: acivity {
    # tipo de origen: STRING
    sql: ${TABLE}.ACIVITY ;;
  }

  dimension: output_vat {
    # tipo de origen: STRING
    sql: ${TABLE}.OUTPUT_VAT ;;
  }

  dimension: input_vat {
    # tipo de origen: STRING
    sql: ${TABLE}.INPUT_VAT ;;
  }

  dimension: withholding_tax {
    # tipo de origen: STRING
    sql: ${TABLE}.WITHHOLDING_TAX ;;
  }

  dimension: social_security {
    # tipo de origen: STRING
    sql: ${TABLE}.SOCIAL_SECURITY ;;
  }

  dimension: nivel1 {
    # tipo de origen: STRING
    sql: ${TABLE}.NIVEL1 ;;
  }

  # Jerarquía "CFI_JER":
  #   1. NIVEL1
  #   2. CASH_FLOW_ITEM

}

view: currency {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_CURRENCY` ;;

  dimension: currency {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

view: gl_account {
  sql_table_name: `draco-506807.DRACO_TESORERIA.DRACO_GL_ACCOUNT` ;;

  dimension: gl_account {
    primary_key: yes
    # tipo de origen: STRING
    sql: ${TABLE}.GL_ACCOUNT ;;
  }

  dimension: descripcion {
    # tipo de origen: STRING
    sql: ${TABLE}.DESCRIPCION ;;
  }

}

explore: tesoreria {
  view_name: tesoreria_fact

  join: version {
    sql_on: ${tesoreria_fact.VERSION} = ${version.VERSION} ;;
    relationship: many_to_one
  }

  join: account {
    sql_on: ${tesoreria_fact.ACCOUNT} = ${account.ACCOUNT} ;;
    relationship: many_to_one
  }

  join: date {
    sql_on: ${tesoreria_fact.DATE} = ${date.DATE} ;;
    relationship: many_to_one
  }

  join: company_code {
    sql_on: ${tesoreria_fact.COMPANY_CODE} = ${company_code.COMPANY_CODE} ;;
    relationship: many_to_one
  }

  join: bussines_line {
    sql_on: ${tesoreria_fact.BUSSINES_LINE} = ${bussines_line.BUSSINES_LINE} ;;
    relationship: many_to_one
  }

  join: vendor_customer {
    sql_on: ${tesoreria_fact.VENDOR_CUSTOMER} = ${vendor_customer.VENDOR_CUSTOMER} ;;
    relationship: many_to_one
  }

  join: cost_center {
    sql_on: ${tesoreria_fact.COST_CENTER} = ${cost_center.COST_CENTER} ;;
    relationship: many_to_one
  }

  join: cash_flow_item {
    sql_on: ${tesoreria_fact.CASH_FLOW_ITEM} = ${cash_flow_item.CASH_FLOW_ITEM} ;;
    relationship: many_to_one
  }

  join: currency {
    sql_on: ${tesoreria_fact.CURRENCY} = ${currency.CURRENCY} ;;
    relationship: many_to_one
  }

  join: gl_account {
    sql_on: ${tesoreria_fact.GL_ACCOUNT} = ${gl_account.GL_ACCOUNT} ;;
    relationship: many_to_one
  }

}