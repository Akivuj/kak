# Agrega el numero de linea y resalta la linea donde se encuentra el cursor
add-highlighter global/ number-lines -hlcursor -separator ' '

# Agrega el ajuste de lineas
add-highlighter global/ wrap

# Hace invisibles los numeros de linea duplicados
set-face global LineNumbersWrapped rgb:2d2d2d,rgb:2d2d2d

# Cambia el cursor a guion bajo en modo insert
set-face global InsertCursor white+u

hook global ModeChange .*:.*:insert %{
    set-face window PrimaryCursor InsertCursor
    set-face window PrimaryCursorEol InsertCursor
}

hook global ModeChange .*:insert:.* %{ try %{
    unset-face window PrimaryCursor
    unset-face window PrimaryCursorEol
}}
