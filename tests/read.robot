*** Settings ***
Library    RPA.Excel.Files

*** Variables ***
${EXCEL_FILE}    ./data/test.xlsx
@{SHEETS_TO_READ}    Escenario 1    Escenario 2    Escenario 3
@{CELLS_TO_READ}    G2  # Especifica la celda que deseas leer

*** Test Cases ***
Leer Hojas Seleccionadas Desde Excel
    Open Workbook    ${EXCEL_FILE}
    FOR    ${sheet}    IN    @{SHEETS_TO_READ}
        Read Sheet Data    ${sheet}
    END
    Close Workbook

Leer Varias Celdas Desde Excel
    Open Workbook    ${EXCEL_FILE}
    FOR    ${sheet}    IN    @{SHEETS_TO_READ}
        Log    Procesando hoja: ${sheet}
        FOR    ${cell}    IN    @{CELLS_TO_READ}
            ${row}=    Evaluate    int(${cell[1:]})  # Extrae el número de fila
            ${column}=    Evaluate    '${cell[0]}'    # Extrae la letra de la columna
            ${value}=    Get Cell Value    row=${row}    column=${column}
            Log    El valor en ${cell} de la hoja ${sheet} es: ${value}
        END
    END
    Close Workbook


*** Keywords ***
Read Sheet Data
    [Arguments]    ${sheet_name}
    ${rows}=    Read Worksheet As Table    name=${sheet_name}    header=True
    Log    Procesando datos de la hoja: ${sheet_name}
    FOR    ${row}    IN    @{rows}
        Log    ${row}
    END
