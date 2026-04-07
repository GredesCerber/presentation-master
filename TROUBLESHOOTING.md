# 🐛 Решение проблем

Частые проблемы и их решения.

---

## ❌ Агент не появляется в списке

**Симптом**: В Copilot Chat нет `presentation-master` в выпадающем меню.

**Решения**:

1. **Перезагрузите VS Code**
   ```
   Shift+Ctrl+P → "Reload Window"
   ```

2. **Проверьте файлы**
   ```powershell
   # Должны быть в этой папке:
   ls $env:APPDATA\Code\User\prompts\
   
   # Обязательные файлы:
   # - presentation-master.agent.md
   # - presentation-master.skill.md
   ```

3. **Переустановите**
   ```powershell
   cd presentation-master
   .\install.ps1
   ```

---

## ❌ Copilot не установлен

**Симптом**: `install.ps1` говорит "GitHub Copilot не найден".

**Решение**:

1. Откройте VS Code
2. `Ctrl+Shift+X` (расширения)
3. Найдите "GitHub Copilot"
4. Установите
5. Войдите в GitHub аккаунт
6. Запустите `install.ps1` снова

---

## ❌ Файлы НЕ создаются, а выводятся в чат

**Симптом**: Агент показывает HTML код в чате, но не создаёт файлы.

**Причина**: Старая версия агента (v1.1) не использовала `create` tool правильно.

**Решение**:

1. **Обновите до v1.2+**
   ```powershell
   cd presentation-master
   git pull
   .\install.ps1 -Force
   ```

2. **Проверьте agent.md**
   - Должен содержать `uses: presentation-master.skill.md`
   - Должен содержать `tools: [create, view, edit, powershell]`

3. **Если проблема остаётся** — явно скажите агенту:
   ```
   Создай презентацию про [тема] и СОХРАНИ в файлы, используя create tool
   ```

---

## ❌ Файлы не создаются (права доступа)

**Симптом**: Агент пытается создать файлы, но ошибка.

**Решения**:

1. **Проверьте права доступа**
   ```powershell
   # Попробуйте создать файл вручную
   New-Item -Path "test.html" -ItemType File
   ```

2. **Откройте папку в VS Code**
   ```
   File → Open Folder → [выберите папку для презентаций]
   ```

3. **Проверьте вывод Copilot**
   ```
   View → Output → выберите "GitHub Copilot"
   ```

---

## ❌ Ошибка PowerShell: "execution policy"

**Симптом**: `.\install.ps1` не запускается, ошибка безопасности.

**Решение**:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Затем запустите `.\install.ps1` снова.

---

## ❌ Git ошибки

### "Author identity unknown"

```powershell
git config --global user.email "your@email.com"
git config --global user.name "Your Name"
```

### "Failed to push"

```powershell
# Проверьте подключение
git remote -v

# Если нужно — обновите URL
git remote set-url origin https://github.com/USERNAME/presentation-master.git
```

---

## ❌ Презентация выглядит странно

**Симптом**: Слайды не отображаются корректно.

**Решения**:

1. **Откройте в браузере напрямую**
   - Не через VS Code preview
   - Двойной клик на `.html` файл

2. **Проверьте кодировку**
   - Файл должен быть UTF-8
   - В VS Code: внизу справа → выберите "UTF-8"

3. **Очистите кэш браузера**
   - `Ctrl+Shift+R` (жёсткая перезагрузка)

---

## ❌ Навигация не работает

**Симптом**: Стрелки не переключают слайды.

**Решения**:

1. **Кликните на презентацию**
   - Фокус должен быть на странице

2. **Проверьте JavaScript**
   - Откройте консоль: `F12` → Console
   - Посмотрите ошибки

---

## ❌ Слишком много/мало слайдов

**Симптом**: Количество слайдов не соответствует ожиданиям.

**Причина**: Формула `3-5 слайдов на автора`.

**Решение**: См. [CUSTOMIZATION.md](CUSTOMIZATION.md) — раздел "Формула расчёта слайдов".

---

## ❌ Неправильный стиль выбран

**Симптом**: Стиль не соответствует теме (например, Brutalist для медицины).

**Решение**: Укажите стиль явно:
```
Создай презентацию про медицину в стиле Minimal Light, авторы: Анна
```

Доступные стили: Glassmorphism, Minimal Dark, Minimal Light, Gradient Mesh, Neomorphism, Brutalist, Corporate

---

## 📞 Всё ещё не работает?

1. **Проверьте версию VS Code**
   ```
   Help → About
   # Нужна версия 1.80+ 
   ```

2. **Проверьте Copilot подписку**
   - Должна быть активна
   - https://github.com/settings/copilot

3. **Переустановите полностью**
   ```powershell
   # Удалить старое
   Remove-Item -Recurse $env:APPDATA\Code\User\prompts\*
   
   # Установить заново
   cd presentation-master
   git pull
   .\install.ps1
   ```

---

**Version**: 1.4.0
