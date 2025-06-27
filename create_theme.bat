@echo off
chcp 65001 >nul
echo.
echo ┌─────────────────────────────────────────────────────────────┐
echo │                Tokyo Night Theme Builder                    │
echo │                   для Telegram Desktop                     │
echo └─────────────────────────────────────────────────────────────┘
echo.

:: Проверяем наличие необходимых файлов
if not exist "colors.tdesktop-theme" (
    echo ❌ Ошибка: Файл colors.tdesktop-theme не найден!
    echo    Убедитесь, что файл находится в той же папке.
    pause
    exit /b 1
)

echo ✅ Найден файл colors.tdesktop-theme
echo.

:: Создаем временную папку
set TEMP_DIR=tokyo_night_temp
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%"
mkdir "%TEMP_DIR%"

:: Копируем файл цветов
copy "colors.tdesktop-theme" "%TEMP_DIR%\" >nul
echo ✅ Цветовая схема скопирована

:: Проверяем наличие фонового изображения
set BACKGROUND_FOUND=0
if exist "background.png" (
    copy "background.png" "%TEMP_DIR%\" >nul
    echo ✅ Фоновое изображение background.png найдено и скопировано
    set BACKGROUND_FOUND=1
) else if exist "background.jpg" (
    copy "background.jpg" "%TEMP_DIR%\" >nul
    echo ✅ Фоновое изображение background.jpg найдено и скопировано
    set BACKGROUND_FOUND=1
) else if exist "tiled.png" (
    copy "tiled.png" "%TEMP_DIR%\" >nul
    echo ✅ Повторяющееся фоновое изображение tiled.png найдено и скопировано
    set BACKGROUND_FOUND=1
) else if exist "tiled.jpg" (
    copy "tiled.jpg" "%TEMP_DIR%\" >nul
    echo ✅ Повторяющееся фоновое изображение tiled.jpg найдено и скопировано
    set BACKGROUND_FOUND=1
) else (
    echo ⚠️  Фоновое изображение не найдено - будет создана простая цветовая тема
    echo    Для фона добавьте файл: background.png, background.jpg, tiled.png или tiled.jpg
)

echo.

:: Создаем архив
set THEME_NAME=Tokyo_Night_Desktop_Theme.tdesktop-theme

echo 🔧 Создание архива темы...

:: Используем PowerShell для создания ZIP архива
powershell -command "Compress-Archive -Path '%TEMP_DIR%\*' -DestinationPath 'temp_theme.zip' -Force"

if exist "temp_theme.zip" (
    :: Переименовываем в .tdesktop-theme
    if exist "%THEME_NAME%" del "%THEME_NAME%"
    ren "temp_theme.zip" "%THEME_NAME%"
    
    echo ✅ Тема успешно создана: %THEME_NAME%
    echo.
    echo 📁 Размер файла:
    for %%A in ("%THEME_NAME%") do echo    %%~zA байт
    echo.
    
    if %BACKGROUND_FOUND%==1 (
        echo 🎨 Тема содержит:
        echo    ✓ Цветовую схему Tokyo Night
        echo    ✓ Фоновое изображение
    ) else (
        echo 🎨 Тема содержит:
        echo    ✓ Цветовую схему Tokyo Night
        echo    ○ Фоновое изображение (не найдено)
    )
    
    echo.
    echo 📥 Как установить:
    echo    1. Откройте Telegram Desktop
    echo    2. Перетащите файл %THEME_NAME% в окно Telegram
    echo    3. Нажмите "Apply This Theme"
    echo    4. Нажмите "Keep Changes"
    echo.
    echo 🌃 Наслаждайтесь темой Tokyo Night!
    
) else (
    echo ❌ Ошибка создания архива!
    echo    Проверьте, что PowerShell доступен в системе.
)

:: Очистка
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%"

echo.
echo Нажмите любую клавишу для выхода...
pause >nul 