#!/bin/bash

# Tokyo Night Theme Builder для Telegram Desktop
# Поддержка: Linux & macOS

# Цвета для вывода
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Функция для красивого вывода
print_header() {
    echo
    echo -e "${PURPLE}┌─────────────────────────────────────────────────────────────┐${NC}"
    echo -e "${PURPLE}│                Tokyo Night Theme Builder                    │${NC}"
    echo -e "${PURPLE}│                   для Telegram Desktop                     │${NC}"
    echo -e "${PURPLE}└─────────────────────────────────────────────────────────────┘${NC}"
    echo
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_info() {
    echo -e "${CYAN}🔧 $1${NC}"
}

# Заголовок
print_header

# Проверяем наличие необходимых файлов
if [ ! -f "colors.tdesktop-theme" ]; then
    print_error "Файл colors.tdesktop-theme не найден!"
    echo "   Убедитесь, что файл находится в той же папке."
    exit 1
fi

print_success "Найден файл colors.tdesktop-theme"
echo

# Создаем временную папку
TEMP_DIR="tokyo_night_temp"
if [ -d "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
fi
mkdir "$TEMP_DIR"

# Копируем файл цветов
cp "colors.tdesktop-theme" "$TEMP_DIR/"
print_success "Цветовая схема скопирована"

# Проверяем наличие фонового изображения
BACKGROUND_FOUND=0
if [ -f "background.png" ]; then
    cp "background.png" "$TEMP_DIR/"
    print_success "Фоновое изображение background.png найдено и скопировано"
    BACKGROUND_FOUND=1
elif [ -f "background.jpg" ]; then
    cp "background.jpg" "$TEMP_DIR/"
    print_success "Фоновое изображение background.jpg найдено и скопировано"
    BACKGROUND_FOUND=1
elif [ -f "tiled.png" ]; then
    cp "tiled.png" "$TEMP_DIR/"
    print_success "Повторяющееся фоновое изображение tiled.png найдено и скопировано"
    BACKGROUND_FOUND=1
elif [ -f "tiled.jpg" ]; then
    cp "tiled.jpg" "$TEMP_DIR/"
    print_success "Повторяющееся фоновое изображение tiled.jpg найдено и скопировано"
    BACKGROUND_FOUND=1
else
    print_warning "Фоновое изображение не найдено - будет создана простая цветовая тема"
    echo "   Для фона добавьте файл: background.png, background.jpg, tiled.png или tiled.jpg"
fi

echo

# Создаем архив
THEME_NAME="Tokyo_Night_Desktop_Theme.tdesktop-theme"

print_info "Создание архива темы..."

# Проверяем наличие zip
if ! command -v zip &> /dev/null; then
    print_error "Команда 'zip' не найдена!"
    echo "   Установите zip:"
    echo "   - Ubuntu/Debian: sudo apt install zip"
    echo "   - CentOS/RHEL: sudo yum install zip"
    echo "   - macOS: zip уже должен быть установлен"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Создаем архив
cd "$TEMP_DIR"
zip -r "../temp_theme.zip" . > /dev/null 2>&1
cd ..

if [ -f "temp_theme.zip" ]; then
    # Переименовываем в .tdesktop-theme
    if [ -f "$THEME_NAME" ]; then
        rm "$THEME_NAME"
    fi
    mv "temp_theme.zip" "$THEME_NAME"
    
    print_success "Тема успешно создана: $THEME_NAME"
    echo
    
    # Получаем размер файла
    if [ "$(uname)" = "Darwin" ]; then
        # macOS
        FILE_SIZE=$(stat -f%z "$THEME_NAME")
    else
        # Linux
        FILE_SIZE=$(stat -c%s "$THEME_NAME")
    fi
    
    echo -e "${BLUE}📁 Размер файла: $FILE_SIZE байт${NC}"
    echo
    
    if [ $BACKGROUND_FOUND -eq 1 ]; then
        echo -e "${CYAN}🎨 Тема содержит:${NC}"
        echo "   ✓ Цветовую схему Tokyo Night"
        echo "   ✓ Фоновое изображение"
    else
        echo -e "${CYAN}🎨 Тема содержит:${NC}"
        echo "   ✓ Цветовую схему Tokyo Night"
        echo "   ○ Фоновое изображение (не найдено)"
    fi
    
    echo
    echo -e "${BLUE}📥 Как установить:${NC}"
    echo "   1. Откройте Telegram Desktop"
    echo "   2. Перетащите файл $THEME_NAME в окно Telegram"
    echo "   3. Нажмите \"Apply This Theme\""
    echo "   4. Нажмите \"Keep Changes\""
    echo
    echo -e "${PURPLE}🌃 Наслаждайтесь темой Tokyo Night!${NC}"
    
else
    print_error "Ошибка создания архива!"
    echo "   Проверьте права доступа и наличие команды zip."
fi

# Очистка
if [ -d "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
fi

echo
echo "Нажмите Enter для выхода..."
read 