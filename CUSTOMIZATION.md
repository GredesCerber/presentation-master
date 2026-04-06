# 🎨 Кастомизация презентаций

Руководство по настройке стилей и поведения генератора.

---

## 🌈 Цветовые палитры

### Встроенные палитры

| Палитра | Основной | Акцент | Когда использовать |
|---------|----------|--------|-------------------|
| **Academic** | `#2E7D32` (зелёный) | `#00897B` (бирюзовый) | Учебные презентации |
| **Modern** | `#5E35B1` (фиолетовый) | `#1E88E5` (синий) | IT, технологии |
| **Professional** | `#1A237E` (тёмно-синий) | `#FFB300` (золотой) | Бизнес, официальные |

### Как добавить свою палитру

В `presentation-master.skill.md` найдите секцию `COLOR_PALETTES` и добавьте:

```css
/* Пример: Тёплая палитра */
:root {
  --primary: #D84315;    /* терракотовый */
  --accent: #FF8F00;     /* янтарный */
  --bg-gradient: linear-gradient(135deg, #FFF3E0, #FFE0B2);
  --text-primary: #3E2723;
  --text-secondary: #5D4037;
}
```

---

## 📐 Типы слайдов

### Существующие типы

1. **Title** — заголовок презентации + авторы
2. **Content** — заголовок + список (max 5 пунктов)
3. **Two-Column** — два столбца (сравнение)
4. **Card Grid** — сетка 4-6 карточек
5. **Section Divider** — разделитель секций
6. **Example** — кейс с выделением

### Как добавить новый тип

В `presentation-master.skill.md` в секции `SLIDE_TYPES` добавьте шаблон:

```html
<!-- Тип: Quote (цитата) -->
<section class="slide slide-quote">
  <blockquote>
    <p class="quote-text">[ЦИТАТА]</p>
    <cite>— [АВТОР]</cite>
  </blockquote>
</section>

<style>
.slide-quote blockquote {
  font-size: clamp(1.5rem, 3vw, 2.5rem);
  font-style: italic;
  border-left: 4px solid var(--accent);
  padding-left: 2rem;
}
</style>
```

---

## 🔢 Формула расчёта слайдов

### Текущая формула

```
Слайдов = Авторы × (3-5) = 14-22 слайда
```

### Как изменить

В `presentation-master.skill.md` найдите `STEP 3` и измените:

```
# Больше слайдов на автора:
slides_per_author = 5-7  # было 3-5

# Меньше слайдов:
slides_per_author = 2-4
```

---

## 🖋️ Типографика

### Текущие настройки

```css
/* Заголовки */
font-family: 'Segoe UI', system-ui, sans-serif;
font-size: clamp(2rem, 5vw, 4rem);

/* Текст */
font-size: clamp(1rem, 2.5vw, 1.5rem);
line-height: 1.6;
```

### Как изменить шрифт

Добавьте Google Fonts в `<head>`:

```html
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<style>
body { font-family: 'Roboto', sans-serif; }
</style>
```

---

## ⌨️ Навигация

### Текущие клавиши

| Клавиша | Действие |
|---------|----------|
| `→` / `Space` | Следующий слайд |
| `←` | Предыдущий слайд |
| `Home` | Первый слайд |
| `End` | Последний слайд |

### Как добавить новые

В `presentation-master.skill.md` в секции JavaScript:

```javascript
// Добавить: F для полноэкранного режима
case 'f':
case 'F':
  document.documentElement.requestFullscreen();
  break;
```

---

## 📝 Речевые заметки

### Формат заметок

```
Слайд 1: [Заголовок]
-----------------------
[Текст для произнесения]

Ключевые моменты:
• Пункт 1
• Пункт 2

Тайминг: ~2 минуты
```

### Как изменить стиль заметок

В `presentation-master.skill.md` измените шаблон `SPEECH_NOTES_TEMPLATE`.

---

## 🔧 Продвинутые настройки

### Отключить анимации

```css
* {
  animation: none !important;
  transition: none !important;
}
```

### Режим печати

```css
@media print {
  .slide { page-break-after: always; }
  .navigation { display: none; }
}
```

### Скрыть номера слайдов

```css
.slide-counter { display: none; }
```

---

## 📁 Структура файлов

После генерации:

```
Ваша_папка/
├── Тема_презентации.html      # Основная презентация
└── Речь_Тема_презентации.html # Заметки докладчика
```

---

**Версия**: 1.1.0
