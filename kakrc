# Agrega el numero de linea
add-highlighter global/ number-lines -hlcursor -separator ' '

# Switch cursor color in insert mode
set-face global InsertCursor white+u

hook global ModeChange .*:.*:insert %{
    set-face window PrimaryCursor InsertCursor
    set-face window PrimaryCursorEol InsertCursor
}

hook global ModeChange .*:insert:.* %{ try %{
    unset-face window PrimaryCursor
    unset-face window PrimaryCursorEol
}}
