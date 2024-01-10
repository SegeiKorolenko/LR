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

; объявление процедуры WriteString дописать

; объявление процедуры ExitProcess дописать

; точка входа программы
start:
    ; вызываем процедуру start
    call start

    ; завершаем программу
    mov eax, 0x4C00
    xor ebx, ebx
    int 0x21

end