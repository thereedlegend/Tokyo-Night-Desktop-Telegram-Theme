# Tokyo Night Theme для Telegram Android

🌃 Красивая тёмная тема для Telegram Android в цветовой палитре Tokyo Night.

## 📱 Особенности Android версии

- ✨ **Полная адаптация** под Android интерфейс
- 🎨 **Те же цвета Tokyo Night** - `#1a1b26`, `#7aa2f7`, `#c0caf5`
- 🌃 **Единый стиль** с Desktop версией
- 📱 **Оптимизация** для мобильных устройств

## 🎨 Цветовая палитра

### Основные цвета:
- **Фон**: `#1a1b26` (Tokyo Night)
- **Текст**: `#c0caf5` (основной)
- **Акцент**: `#7aa2f7` (синий)
- **Вторичный**: `#a9b1d6` (серый)

### Акцентные цвета:
- **Синий**: `#7aa2f7` - кнопки, ссылки, активные элементы
- **Циан**: `#73daca` - служебная информация
- **Зелёный**: `#9ece6a` - онлайн статус, успешные действия
- **Жёлтый**: `#e0af68` - отправляемые сообщения
- **Красный**: `#f7768e` - ошибки, черновики

## 📥 Установка

### Метод 1: Через файл (рекомендуемый)
1. **Скачайте** файл `Tokyo_Night.attheme`
2. **Откройте** его любым способом:
   - Через файловый менеджер
   - Отправьте себе в Telegram и нажмите на файл
   - Через браузер, если скачивали с интернета
3. **Выберите** "Открыть в Telegram"
4. **Нажмите** "Apply Theme"

### Метод 2: Через встроенный редактор
1. Откройте **Telegram Android**
2. Перейдите в **Settings** → **Chat Settings** → **Theme**
3. Нажмите **"+"** в правом верхнем углу
4. Выберите **"Create New Theme"**
5. Скопируйте содержимое файла `Tokyo_Night.attheme`
6. Вставьте в редактор и сохраните

### Метод 3: QR код или ссылка
Если тема опубликована в @AndroidThemes:
1. Найдите Tokyo Night в канале тем
2. Сканируйте QR код или перейдите по ссылке
3. Тема установится автоматически

## 🔧 Системные требования

- ✅ **Telegram для Android** 4.0+
- ✅ **Android** 4.1+ (API 16+)
- ✅ **Свободное место** 1MB

## 🎯 Что включено

### 📱 Интерфейс
- 🌙 Тёмная тема с комфортными цветами
- 📋 Стильные списки чатов
- 🎨 Красивые диалоги и меню
- ✨ Плавные анимации

### 💬 Чаты
- 💭 Читаемые пузыри сообщений
- 👥 Яркие цвета имён в группах
- 📎 Стильные прикрепления
- 🎵 Красивый музыкальный плеер

### ⚙️ Настройки
- 🔘 Современные переключатели
- 📊 Стильные индикаторы прогресса
- 🎛️ Красивые элементы управления
- 📝 Удобные поля ввода

## 🎨 Дополнительная настройка

### Изменение акцентного цвета:
1. Откройте тему в **Theme Editor**
2. Найдите переменные с **Blue** в названии
3. Измените значение цвета на желаемое
4. Сохраните изменения

### Пример смены синего на фиолетовый:
```
// Было (синий):
windowBackgroundWhiteBlueText=-8726281

// Стало (фиолетовый):
windowBackgroundWhiteBlueText=-12490271
```

## 🔢 Формат цветов Android

Android использует **signed 32-bit integers** для цветов:

```
HEX → ARGB → Integer
#1a1b26 → 0xFF1a1b26 → -14671082
#7aa2f7 → 0xFF7aa2f7 → -8726281
#c0caf5 → 0xFFc0caf5 → -3355444
```

**Онлайн конвертер**: [Android Color Calculator](https://www.androiddesignpatterns.com/2016/05/extracting-colors-to-color-palette.html)

## 📝 Совместимость

### ✅ Поддерживается:
- **Telegram Android** (официальный)
- **Telegram X** (частично)
- **Plus Messenger**
- **Nekogram**
- **Telegram FOSS**

### ❌ Не поддерживается:
- **Telegram Desktop** (используйте `.tdesktop-theme`)
- **Telegram iOS** (нет поддержки тем)
- **Telegram Web**

## 🐛 Решение проблем

**Тема не применяется?**
- Обновите Telegram до последней версии
- Убедитесь, что файл имеет расширение `.attheme`
- Попробуйте открыть файл из самого Telegram

**Некоторые элементы не окрашены?**
- Это нормально - не все элементы можно настроить
- Telegram периодически добавляет новые переменные

**Хотите изменить цвета?**
- Используйте встроенный **Theme Editor**
- Найдите нужную переменную по названию
- Измените значение и сохраните

## 🔗 Полезные ссылки

### Каналы тем:
- [@AndroidThemes](https://t.me/AndroidThemes) - официальный канал
- [@themes](https://t.me/themes) - сообщество тем

### Инструменты:
- [.attheme Editor](https://attheme-editor.snejugal.ru/) - веб-редактор
- [Theme Glossary](https://attheme-glossary.snejugal.ru/) - справочник переменных

### Боты:
- [@themepreviewbot](https://t.me/themepreviewbot) - превью тем
- [@atthemeeditorbot](https://t.me/atthemeeditorbot) - редактор тем

## 💝 Связанные проекты

- **Tokyo Night Desktop** - версия для Telegram Desktop
- **Tokyo Night VS Code** - оригинальная тема для редактора
- **Tokyo Night Terminal** - тема для терминалов

## 🤝 Вклад в проект

Если хотите улучшить тему:
1. Откройте файл `Tokyo_Night.attheme` в текстовом редакторе
2. Измените нужные переменные
3. Протестируйте в Telegram Android
4. Поделитесь улучшениями!

---

**🌃 Наслаждайтесь Tokyo Night на Android! Пусть ваш Telegram светится огнями ночного Токио!**

## 📧 Поддержка

- 🐛 **Баги**: Создайте issue в репозитории
- 💡 **Предложения**: Pull requests приветствуются
- 📖 **Вопросы**: Обратитесь к документации

**Версия**: 1.0  
**Совместимость**: Telegram Android 4.0+  
**Дата**: Январь 2025 