; объявление секции кода
.code
start:
    ; выводим строку "Hello, World!" в консоль
    mov edx, offset message ; загружаем адрес строки в регистр edx
    call WriteString        ; вызываем процедуру WriteString

    ; выходим из программы
    call ExitProcess

; объявление секции данных
.data
message db 'Hello, World!', 0

; объявление процедуры WriteString
WriteString proc
    mov eax, 4         ; системный вызов для вывода строки
    mov ebx, 1         ; стандартный вывод
    mov ecx, edx       ; адрес строки
    mov edx, 13        ; размер строки
    int 0x80           ; вызов системного прерывания
    ret                ; возвращение из процедуры
WriteString endp

; объявление процедуры ExitProcess
ExitProcess proc
    mov eax, 1         ; системный вызов для выхода из программы
    xor ebx, ebx       ; код возврата (0)
    int 0x80           ; вызов системного прерывания
ExitProcess endp

; точка входа программы
start:
    ; вызываем процедуру start
    call start

    ; завершаем программу
    mov eax, 0x4C00
    xor ebx, ebx
    int 0x21

end