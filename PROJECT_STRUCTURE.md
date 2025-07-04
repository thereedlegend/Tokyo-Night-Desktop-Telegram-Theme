# 📁 Структура проекта Tokyo Night Theme

## 🎯 Основные файлы

```
Tokyo Night Desktop Telegram Theme/
├── 📄 colors.tdesktop-theme          # Desktop цветовая схема
├── 📱 Tokyo_Night.attheme            # Android тема
├── 🎨 background.svg                 # SVG шаблон фонового изображения
├── 🚀 QUICK_START.md                 # Быстрый старт (Desktop)
├── 📱 QUICK_START_Android.md         # Быстрый старт (Android)
├── 📖 README.md                      # Главная документация
├── 📱 README_Android.md              # Документация для Android
├── 📝 CHANGELOG.md                   # История изменений
├── 🎨 create_background.md           # Инструкции по созданию фона
├── 🔧 create_theme.bat               # Скрипт сборки для Windows
├── 🔧 create_theme.sh                # Скрипт сборки для Linux/macOS
└── 📋 PROJECT_STRUCTURE.md           # Этот файл
```

## 📄 Описание файлов

### 🎨 Основные файлы темы

**`colors.tdesktop-theme`** - Desktop тема
- Цветовая схема Tokyo Night для Telegram Desktop
- Содержит 300+ настроек цветов для всех элементов интерфейса
- Можно использовать как отдельную тему (простая установка)
- Готов к использованию - просто перетащите в Telegram Desktop

**`Tokyo_Night.attheme`** - Android тема
- Цветовая схема Tokyo Night для Telegram Android
- Формат signed 32-bit integers для цветов
- Совместима с официальным Telegram и его форками
- Поддержка встроенного редактора тем Android

**`background.svg`**
- SVG шаблон для создания фонового изображения
- Содержит градиент Tokyo Night и силуэт города
- Нужно конвертировать в PNG/JPEG для использования в теме
- Размер: 1920x1080 пикселей

### 📚 Документация

**`README.md`** - Главная документация
- 🎨 Полная цветовая палитра
- 📥 Подробные инструкции по установке
- 🔧 Системные требования
- 🎯 Особенности темы
- 🤝 Информация о вкладе в проект

**`QUICK_START.md`** - Быстрый старт (Desktop)
- ⚡ Установка за 2 минуты
- 🎯 Только самое необходимое
- 🆘 Решение основных проблем

**`QUICK_START_Android.md`** - Быстрый старт (Android)
- ⚡ Установка за 1 минуту
- 📱 Простые шаги для Android
- 🆘 Решение типичных проблем

**`README_Android.md`** - Android документация
- 📱 Полное руководство для Android версии
- 📥 Методы установки .attheme файлов
- 🎨 Кастомизация и настройка
- 🔢 Объяснение формата Android цветов

**`CHANGELOG.md`** - История изменений
- 📝 Подробное описание всех обновлений
- 🔧 Исправления багов и улучшения
- 🎨 Изменения цветовой схемы
- 🚀 Инструкции по обновлению

**`create_background.md`** - Создание фона
- 🎨 4 способа создания фонового изображения
- 🛠️ Инструкции для разных редакторов
- 💡 Советы по дизайну
- 📐 Технические требования

### 🔧 Скрипты автоматизации

**`create_theme.bat`** - Windows
- 🔧 Автоматическая сборка полной темы
- ✅ Проверка наличия файлов
- 📦 Создание .tdesktop-theme архива
- 🎨 Поддержка фоновых изображений

**`create_theme.sh`** - Linux/macOS
- 🔧 Аналог bat файла для Unix систем
- 🌈 Цветной вывод в терминале
- ✅ Проверка зависимостей (zip)
- 📊 Информация о размере файла

## 🏗️ Как использовать проект

### 📥 Простая установка (только цвета)
1. Скачайте `colors.tdesktop-theme`
2. Перетащите в Telegram Desktop
3. Готово! ✅

### 🎨 Полная тема с фоном
1. Создайте фоновое изображение (`background.png`)
2. Поместите в папку с `colors.tdesktop-theme`
3. Запустите скрипт сборки:
   - Windows: `create_theme.bat`
   - Linux/macOS: `./create_theme.sh`
4. Установите созданный `.tdesktop-theme` файл

## 🎨 Цветовая схема

### Основные цвета Tokyo Night:
```css
/* Фоны */
TOKYO_BG: #1a1b26;           /* Основной фон */
TOKYO_BG_STORM: #24283b;     /* Вторичный фон */

/* Текст */
TOKYO_FG: #c0caf5;           /* Основной текст */
TOKYO_FG_DARK: #a9b1d6;      /* Вторичный текст */
TOKYO_COMMENT: #565f89;      /* Комментарии */

/* Акценты */
TOKYO_BLUE: #7aa2f7;         /* Кнопки, ссылки */
TOKYO_PURPLE: #bb9af7;       /* Специальные элементы */
TOKYO_CYAN: #73daca;         /* Служебная информация */
TOKYO_GREEN: #9ece6a;        /* Онлайн, успех */
TOKYO_YELLOW: #e0af68;       /* Предупреждения */
TOKYO_RED: #f7768e;          /* Ошибки, важное */
```

## 📊 Статистика проекта

- **Количество настроек цветов**: 300+
- **Поддерживаемые элементы**: Все элементы Telegram Desktop
- **Размер цветовой схемы**: ~13KB
- **Совместимость**: Telegram Desktop 1.0.21+
- **Поддерживаемые ОС**: Windows, macOS, Linux

## 🛠️ Технические детали

### Формат темы Telegram Desktop
- **Расширение**: `.tdesktop-theme`
- **Структура**: ZIP архив с файлами:
  - `colors.tdesktop-theme` (обязательно)
  - `background.png/jpg` (опционально)
  - `tiled.png/jpg` (для повторяющегося фона)

### Поддерживаемые форматы фона
- **PNG** - лучшее качество
- **JPEG** - меньший размер файла
- **Размеры**: 1366x768 до 4K (3840x2160)

## 🔄 Обновления и версии

**Версия 1.0** (Январь 2025)
- ✅ Полная цветовая схема Tokyo Night
- ✅ Автоматические скрипты сборки
- ✅ Подробная документация
- ✅ Кроссплатформенная поддержка

## 🤝 Как внести изменения

1. **Цвета**: Отредактируйте `colors.tdesktop-theme`
2. **Фон**: Создайте новое изображение `background.png`
3. **Документация**: Обновите соответствующие MD файлы
4. **Скрипты**: Модифицируйте `.bat` или `.sh` файлы

## 📞 Поддержка

- **Issues**: Создайте issue в репозитории
- **Предложения**: Pull requests приветствуются
- **Документация**: Все в MD файлах

---

**🌃 Tokyo Night Theme - красота городских огней в вашем Telegram Desktop!** 