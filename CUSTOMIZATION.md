# 🎨 Кастомизация презентаций

Руководство по настройке стилей и поведения генератора.

---

## 🌈 Стили

### По умолчанию: Academic (зелёный/бирюзовый)

**Этот стиль используется ВСЕГДА**, если вы не укажете другой явно.

```css
:root {
  --bg-dark: #0f172a;
  --bg-surface: #1e293b;
  --text-primary: #f8fafc;
  --accent-1: #2f8f6a;
  --accent-2: #0ea5e9;
  --accent-gradient: linear-gradient(135deg, #064e3b, #065f46, #047857);
}
```

### Как указать альтернативный стиль

Добавьте в запрос:
```
"в стиле Glassmorphism"
"светлый стиль"
"градиентный"
"брутализм"
"корпоративный"
"неоморфизм"
```

---

## 🎨 Альтернативные стили (7 вариантов)

### Glassmorphism
```css
:root {
  --bg-dark: #0a0a1a;
  --glass: rgba(255, 255, 255, 0.05);
  --glass-border: rgba(255, 255, 255, 0.1);
  --text-primary: #f1f5f9;
  --accent-1: #8b5cf6;
  --accent-2: #06b6d4;
}
```

### Minimal Dark
```css
:root {
  --bg-dark: #09090b;
  --bg-surface: #18181b;
  --text-primary: #fafafa;
  --accent-1: #22c55e;
}
```

### Minimal Light
```css
:root {
  --bg-dark: #ffffff;
  --bg-surface: #f4f4f5;
  --text-primary: #18181b;
  --accent-1: #2563eb;
}
```

### Gradient Mesh
```css
body {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
  background-size: 400% 400%;
  animation: gradientShift 15s ease infinite;
}
```

### Neomorphism
```css
:root {
  --bg-dark: #e0e5ec;
  --text-primary: #2d3436;
}
.card {
  box-shadow: 8px 8px 16px #b8bec4, -8px -8px 16px #ffffff;
}
```

### Brutalist
```css
:root {
  --bg-dark: #000000;
  --text-primary: #ffffff;
  --accent-1: #ff0000;
}
.card { border: 3px solid #ff0000; border-radius: 0; }
```

### Corporate
```css
:root {
  --bg-dark: #f8fafc;
  --text-primary: #1e293b;
  --accent-1: #1e40af;
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
  border-left: 4px solid var(--accent-1);
  padding-left: 2rem;
}
</style>
```

---

## 🔢 Формула расчёта слайдов

### Текущая формула

```
Слайдов = Авторы × (3-5) = 14-22 слайда

| Авторы | Min | Target | Max |
|--------|-----|--------|-----|
| 1      | 10  | 12-14  | 16  |
| 2      | 10  | 14-16  | 18  |
| 3      | 12  | 16-18  | 20  |
| 4+     | 14  | 18-20  | 22  |
```

### Как изменить

В `presentation-master.skill.md` найдите `STEP 1` и измените таблицу.

---

## 🖋️ Типографика

### Текущие настройки

```css
/* Шрифт */
font-family: 'Inter', 'Segoe UI', system-ui, sans-serif;

/* Заголовки */
font-size: clamp(2rem, 4vw, 3.5rem);
line-height: 1.4;

/* Текст */
font-size: clamp(0.9rem, 1.2vw, 1.1rem);
line-height: 1.6;
```

### Как изменить шрифт

Google Fonts с fallback (рекомендуется для офлайн):

```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
body { font-family: 'Inter', 'Segoe UI', system-ui, sans-serif; }
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

**Версия**: 1.3.0
