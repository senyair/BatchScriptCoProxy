@echo off
setlocal enabledelayedexpansion

:: Đọc file input.txt và ghi kết quả vào output.txt
set "input_file=input.txt"
set "output_file=output.txt"

:: Xóa file output.txt nếu đã tồn tại
if exist "%output_file%" del "%output_file%"

:: Mở file input.txt để đọc từng dòng
for /f "tokens=1-4 delims=:" %%a in (%input_file%) do (
    set "ip=%%a"
    set "port=%%b"
    set "user=%%c"
    set "password=%%d"
    
    :: Tạo cấu trúc mới và ghi vào output.txt
    echo http://!user!:!password!@!ip!:!port! >> %output_file%
)

echo HOAN THANH CHUYEN DOI.
pause
