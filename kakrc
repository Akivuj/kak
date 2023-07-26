# Agrega el numero de linea y resalta la linea donde se encuentra el cursor
add-highlighter global/ number-lines -hlcursor -separator ' '

# Agrega word wrap
add-highlighter global/ wrap

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
