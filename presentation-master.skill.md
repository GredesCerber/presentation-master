---
name: presentation-master
description: "Create a complete, production-ready HTML presentation from a topic and creator names. Generates interactive slides + speaker notes. Automatically calculates slide count based on number of creators. No external dependencies, fully responsive, built-in navigation."
aliases:
  - presentation
  - create presentation
  - make presentation
  - новая презентация
  - generate presentation
  - презентация
---

# Presentation Master — Complete Workflow

## LANGUAGE RULE (CRITICAL)

**Match the user's language in ALL output:**
- If user writes in Russian → All content in Russian
- If user writes in English → All content in English
- If user writes in any language → Match that language

This includes: slide titles, bullet points, speaker notes, transitions, and status messages.

**File naming:** Use original script for file names (e.g., "Машинное_обучение.html" for Russian topics)

---

## INPUT: What You'll Receive

User will say something like:
> "Create presentation about [TOPIC], authors: [NAME1], [NAME2], ..."

Or in Russian:
> "Создай презентацию про [TOPIC], авторы: [NAME1], [NAME2], ..."

You MUST extract:
1. **TOPIC** — clear subject (not just "interesting topic")
2. **AUTHORS** — list of creator names (count matters!)
3. **CONTEXT** — academic/professional (implied from topic)

---

## STEP 1: Calculate Total Slides

### IMPORTANT: Minimum is ALWAYS 14 slides (regardless of author count)

The "per author" guideline is for CONTENT distribution, NOT total count.

**Total slide count formula:**
```
TOTAL = FIXED_SLIDES + CONTENT_SLIDES

Where:
- FIXED_SLIDES = 4 (Title + Overview + Summary + Thank You)
- CONTENT_SLIDES = 10-18 (depends on topic complexity)

MINIMUM: 14 slides (no exceptions)
MAXIMUM: 22 slides (to avoid audience fatigue)
```

### Slide Count by Author Count

| Authors | Min | Target | Max | Content Slides per Author |
|---------|-----|--------|-----|---------------------------|
| 1       | 14  | 14-16  | 18  | 10-14 slides              |
| 2       | 14  | 16-18  | 20  | 5-8 slides each           |
| 3       | 16  | 18-20  | 22  | 4-6 slides each           |
| 4+      | 18  | 20-22  | 22  | 3-5 slides each           |

### How to Apply This

**Example 1: Single author**
- 1 author → still need 14+ slides minimum
- Author covers ALL content slides (10-14 content + 4 fixed = 14-18 total)
- Topic complexity determines exact count

**Example 2: Two authors**
- 2 authors → target 16-18 slides
- Each author's material fills ~6-7 content slides
- Plus 4 fixed slides = 16-18 total

**Example 3: Four authors**
- 4 authors → target 20-22 slides
- Each author's material fills ~4-5 content slides
- Plus 4 fixed slides = 20-24, cap at 22

### Key Clarification

❌ WRONG thinking: "1 author × 5 slides = 5 slides total"
✅ CORRECT thinking: "1 author = 14 slides minimum, author covers all content"

The "per author" number is about WORKLOAD DISTRIBUTION in group projects, not total presentation length. A good presentation needs 14-22 slides regardless of how many people created it.

---

## STEP 2: Slide Structure Template

### Fixed Slides (Common to All Presentations)

**Slide 1: Title Slide**
- Topic (large, centered)
- Authors (credits below)
- Date/Group info (small, bottom)
- Gradient background, minimal text
- Do NOT label which author this is from

**Slide 2: Overview/Agenda**
- "What We'll Cover Today"
- 4-6 main sections (as bullets or cards)
- This acts as a roadmap
- No detailed content yet

**Slide N-1: Summary/Key Takeaways**
- Recap main 3-4 points from whole presentation
- One takeaway per bullet
- Concrete, actionable

**Slide N: Thank You**
- "Thank You" or "Questions?"
- Optional: contact info/ social links (if relevant)
- Colored background, minimal text

### Variable Content Section (Expands Based on Slide Count)

Between overview and summary, fill with:
- **Section dividers** (transition slides between major topics)
- **Content slides** (concepts, examples, evidence)
- **Example/case study slides** (real-world applications)
- **Visual slides** (cards, grids, comparisons)

**Distribution pattern:**
- For 12-14 slides total:
  - 1 title + 1 overview + 8-10 content + 1 summary + 1 thank you
  
- For 16-18 slides total:
  - 1 title + 1 overview + 11-13 content (with 2 section dividers) + 1 summary + 1 thank you

- For 20+ slides total:
  - 1 title + 1 overview + 15-17 content (with 3 section dividers) + 1 summary + 1 thank you

---

## STEP 3: Content Planning Without Author Labels

**Key principle:** Slides should flow naturally, NOT marked with "Speaker 1" or "Speaker 2"

**Natural transitions between topics (implicit author handoff):**

```
Slide 3: Context/History → (Logical pivot) → Slide 4: Problem Statement
  ↓ Natural transition: "Now that we understand the background..."

Slide 6: Core Concept A → (Section divider) → Slide 7: Core Concept B
  ↓ Transition: "Let's zoom in on the second key idea..."

Slide 10: Evidence/Data → (Section divider) → Slide 11: Application
  ↓ Transition in speech text: "This research shows us how to apply it in practice..."
```

**What this means:**
- Each authors' "section" is marked by TOPIC CHANGE, not by name
- Speaker text includes natural transition phrases in notes
- Handoff happens via link between topics (e.g., history → problem → solution)

---

## STEP 4: Six Slide Types

Mix these types throughout the presentation:

### Type A: Title/Header
- Centered, large text (clamp 2.5-3.5em)
- Minimal content (1-2 lines max)
- Gradient or solid color background
- Example: Title slide, section dividers, thank you

### Type B: Content
- Heading (h2, left-aligned)
- 4-5 bullets OR 2-3 short paragraphs
- 1 optional: note/example box
- Max 150 words total
- Example: "Why This Matters", "Key Principles"

### Type C: Two-Column
- Grid layout: left col (text/bullets) + right col (text/bullets or example)
- Use for: comparison, problem/solution, theory/practice
- Max 7-8 bullets total (split between columns)
- Example: "Traditional vs Modern Approach"

### Type D: Card Grid
- 4-6 cards in 2x2 or 2x3 layout
- Each card: icon/emoji + short title + 1 line of text
- Use for: processes, benefits, features, categories
- Light shadows, rounded corners
- Example: "Four Stages of Learning"

### Type E: Section Divider (Transition)
- Centered heading (1-2 words)
- Colored background (gradient preferred)
- Minimal content
- Signals topic change to audience
- DO NOT label "Now Person X speaks"
- Example: "Practical Applications" or "The Evidence"

### Type F: Example/Case Study
- Heading + scenario description or headline
- Code block, diagram description, or real-world story (2-3 sentences)
- Practical application (not abstract)
- Max 100 words
- Example: "How This Works in Practice"

---

## STEP 5: Content Quality Standards

### Quantity Limits (Strict)
- ✅ Per slide max 150 words
- ✅ Per bullet point max 2 lines (when displayed)
- ✅ Max 5 bullets per slide
- ✅ Max 1 heading per slide (h2)
- ✅ Section dividers: every 4-5 content slides

### Quality Requirements (Strict)
- ✅ EVERY concept must have ≥1 concrete example
- ✅ NO abstract statements like "это важный инструмент" or "имеет большое значение"
- ✅ NO placeholder text or Lorem ipsum
- ✅ NO unexplained technical terms
- ✅ CLEAR hierarchy: h1 (slide) → h2 (section) → h3 (detail)

### Semantic Clarity (Strict)
- ✅ Each slide ONE clear idea + supporting details
- ✅ Logical flow: context → problem → solution → application
- ✅ Transitions marked in speech text (natural handoff)
- ✅ Conclusion ties back to overview

---

## STEP 6: FACT-CHECKING Protocol

**Before considering presentation complete, verify:**

### Data Accuracy
- ✅ All statistics/numbers are realistic for the topic
- ✅ Dates are correct (not "2025" when it's about 2023 events)
- ✅ No contradictions (e.g., saying "50% of X" then later "60% of X")
- ✅ Sources implied or reasonable (not made-up percentages)

### Terminology Accuracy
- ✅ Technical terms used correctly
- ✅ No conflating related concepts
- ✅ Definitions align with standard understanding
- ✅ If specialized field, terms match field conventions

### Logic & Consistency
- ✅ Examples support the claim (not unrelated)
- ✅ No logical fallacies (false cause, false dichotomy, etc.)
- ✅ Sequential logic makes sense (A → B → C flow)
- ✅ Conclusion supported by evidence shown

### Tone & Appropriateness
- ✅ Matches academic/professional context
- ✅ Not overly casual or overly formal
- ✅ Respectful to audience (no condescending)
- ✅ Claims are measured (not absolute where uncertain)

**Red flags to catch:**
- ❌ "Everyone knows..." (vague claim)
- ❌ "Studies show..." without specifics
- ❌ "Recent research" (when is it? 2023? 2010?)
- ❌ Examples that don't support claim
- ❌ Statistics that seem too convenient
- ❌ Mixing opinion with fact without signaling

---

## STEP 7: Design & Styling Standards

### 🎨 Default Style: Academic (Green/Teal)

**По умолчанию используется Academic стиль** — тёмный фон с зелёными/бирюзовыми акцентами. Это проверенный стиль из примеров.

Альтернативные стили применяются **только если пользователь явно указал**:
```
"Создай презентацию в стиле Glassmorphism..."
"Make presentation with Brutalist style..."
```

### 🎯 DEFAULT STYLE: Academic (используется всегда, если не указано иное)

**Colors:**
```css
:root {
  --bg-dark: #0f172a;
  --bg-surface: #1e293b;
  --text-primary: #f8fafc;
  --text-secondary: #e2e8f0;
  --accent-1: #2f8f6a;
  --accent-2: #0ea5e9;
  --accent-gradient: linear-gradient(135deg, #064e3b 0%, #065f46 50%, #047857 100%);
  --title-gradient: linear-gradient(135deg, #a7f3d0, #6ee7b7);
}
```

**Title slide:**
```css
.slide-title {
  background: linear-gradient(135deg, #064e3b 0%, #065f46 50%, #047857 100%);
}
.slide-title h1 {
  background: linear-gradient(135deg, #a7f3d0, #6ee7b7);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
```

**Content slides:**
```css
.slide-content {
  background: linear-gradient(180deg, #0f172a 0%, #1e293b 100%);
}
.slide-content h2 {
  color: #6ee7b7;
  border-left: 5px solid #2f8f6a;
}
```

**Cards:**
```css
.card {
  background: rgba(15, 23, 42, 0.8);
  border: 1px solid rgba(47, 143, 106, 0.3);
  border-radius: 12px;
}
```

---

### 🔄 Alternative Styles (только по запросу пользователя)

Используются ТОЛЬКО если пользователь явно указал стиль в запросе.

---

### Alt Style 1: GLASSMORPHISM

**Trigger:** Пользователь указал "в стиле Glassmorphism" или "glass style"

**Colors:**
```css
:root {
  --bg-dark: #0a0a1a;
  --bg-surface: #0f172a;
  --glass: rgba(255, 255, 255, 0.05);
  --glass-border: rgba(255, 255, 255, 0.1);
  --text-primary: #f1f5f9;
  --text-secondary: rgba(255, 255, 255, 0.65);
  --accent-1: #8b5cf6;
  --accent-2: #06b6d4;
}
```

**Background with animated orbs:**
```css
body::before {
  content: '';
  position: fixed;
  top: -50%; left: -50%;
  width: 200%; height: 200%;
  background: 
    radial-gradient(circle at 20% 30%, rgba(139, 92, 246, 0.15) 0%, transparent 40%),
    radial-gradient(circle at 80% 70%, rgba(6, 182, 212, 0.12) 0%, transparent 40%);
  animation: bgFloat 20s ease-in-out infinite;
}
```

**Glass cards:**
```css
.glass-card {
  background: var(--glass);
  backdrop-filter: blur(20px);
  border: 1px solid var(--glass-border);
  border-radius: 16px;
}
```

---

### Alt Style 2: MINIMAL DARK

**Trigger:** Пользователь указал "Minimal Dark" или "тёмный минималистичный"

**Colors:**
```css
:root {
  --bg-dark: #09090b;
  --bg-surface: #18181b;
  --glass: #18181b;
  --glass-border: #27272a;
  --text-primary: #fafafa;
  --text-secondary: #a1a1aa;
  --accent-1: #22c55e;
  --accent-2: #3b82f6;
}
```

**Clean background:**
```css
body {
  background: linear-gradient(180deg, #09090b 0%, #18181b 100%);
}
```

---

### Alt Style 3: MINIMAL LIGHT

**Trigger:** Пользователь указал "Minimal Light", "светлый", "белый фон"

**Colors:**
```css
:root {
  --bg-dark: #ffffff;
  --bg-surface: #f4f4f5;
  --glass: #ffffff;
  --glass-border: #e4e4e7;
  --text-primary: #18181b;
  --text-secondary: #52525b;
  --accent-1: #2563eb;
  --accent-2: #0ea5e9;
}
```

**White background:**
```css
body {
  background: linear-gradient(180deg, #ffffff 0%, #f4f4f5 100%);
}
```

---

### Alt Style 4: GRADIENT MESH

**Trigger:** Пользователь указал "Gradient Mesh", "градиент", "цветной"

**Colors:**
```css
:root {
  --text-primary: #ffffff;
  --text-secondary: rgba(255,255,255,0.85);
  --glass: rgba(0,0,0,0.2);
  --glass-border: rgba(255,255,255,0.2);
  --accent-1: #f472b6;
  --accent-2: #a855f7;
}
```

**Animated gradient:**
```css
body {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
  background-size: 400% 400%;
  animation: gradientShift 15s ease infinite;
}
@keyframes gradientShift {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
```

---

### Alt Style 5: NEOMORPHISM

**Trigger:** Пользователь указал "Neomorphism", "неоморфизм", "мягкие тени"

**Colors:**
```css
:root {
  --bg-dark: #e0e5ec;
  --text-primary: #2d3436;
  --text-secondary: #636e72;
  --accent-1: #6366f1;
  --accent-2: #8b5cf6;
}
```

**Soft shadows:**
```css
.glass-card {
  background: #e0e5ec;
  border: none;
  box-shadow: 8px 8px 16px #b8bec4, -8px -8px 16px #ffffff;
}
```

---

### Alt Style 6: BRUTALIST

**Trigger:** Пользователь указал "Brutalist", "брутализм", "дерзкий"

**Colors:**
```css
:root {
  --bg-dark: #000000;
  --text-primary: #ffffff;
  --accent-1: #ff0000;
  --glass: transparent;
  --glass-border: #ff0000;
}
```

**Bold design:**
```css
body { background: #000; }
.glass-card {
  background: transparent;
  border: 3px solid #ff0000;
  border-radius: 0;
}
h1, h2, h3 { text-transform: uppercase; font-weight: 900; }
```

---

### Alt Style 7: CORPORATE

**Trigger:** Пользователь указал "Corporate", "корпоративный", "бизнес стиль"

**Colors:**
```css
:root {
  --bg-dark: #f8fafc;
  --bg-surface: #ffffff;
  --glass: #ffffff;
  --glass-border: #e2e8f0;
  --text-primary: #1e293b;
  --text-secondary: #475569;
  --accent-1: #1e40af;
  --accent-2: #3b82f6;
}
```

**Professional look:**
```css
body { background: linear-gradient(180deg, #f8fafc 0%, #e2e8f0 100%); }
.glass-card { box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
```

---

### Typography Rules (All Styles)
- Fonts: `'Inter', 'Segoe UI', system-ui, sans-serif` (NEVER serif)
- Font size: Use `clamp()` for responsive sizing
  - Heading 1: `clamp(2em, 4vw, 3.5em)`
  - Heading 2: `clamp(1.5em, 2.5vw, 2.2em)`
  - Body text: `clamp(0.9em, 1.2vw, 1.1em)`
  - Small text: `clamp(0.75em, 0.9vw, 0.9em)`
- Line height: 1.4 for headings, 1.6 for body
- Letter spacing: normal (0)

### Component Styles (All Styles)
- Card boxes: `border-radius: 12px` (except Brutalist = 0)
- Shadows: subtle `0 4px 12px rgba(0,0,0,0.1)`
- Spacing: `gap: clamp(12px, 2vw, 24px)`
- Transitions: `all 0.3s ease`

### Responsive Behavior
- **Desktop (1200px+):** Full design, all elements visible
- **Tablet (768px-1199px):** Optimized spacing, larger touch targets
- **Mobile (320px-767px):** Single column, stacked content, oversized text

---

## STEP 8: HTML Output Format

### File 1: Interactive Presentation (`{Topic}.html`)

**Structure:**
- DOCTYPE html5
- All CSS inline (no external files)
- All JS inline (no external libraries)
- Semantic HTML5 (header, main, section, article, footer)

**Navigation:**
- Prev/Next buttons (disabled on first/last slide)
- Slide counter (e.g., "3 / 16")
- Progress bar at top (visual indicator)
- Keyboard support (arrow keys: left/right to navigate, Escape to fullscreen)

**Features:**
- ✅ Works offline (no CDN, no internet required)
- ✅ Opens directly in browser
- ✅ Print-friendly styling (@media print)
- ✅ Responsive (tested on 320px, 768px, 1024px, 1920px)
- ✅ No console errors

**Content overflow handling:**
- If slide content > viewport height → enable `overflow-y: auto` with scrollbar styling
- Max-height constraint: `calc(100vh - 180px)` for slide content
- All fonts use `clamp()` to scale appropriately
- No text gets hidden unless intentionally scrollable

### File 2: Speaker Notes (`Speech_Notes_{Topic}.html`)

**Structure:**
- Header: Topic name, authors, date, group info
- Content: One section per slide
- Each section contains:
  - Slide number (e.g., "### Slide 3: Key Points")
  - Slide title (same as presentation)
  - 2-5 paragraphs of speaker notes (conversational tone)
  - Natural transition phrase to next slide (in italics)

**Writing style:**
- First person plural ("мы рассмотрели", "давайте подумаем")
- Conversational, as if speaking to audience
- Include timing hints ("This slide should take about 2-3 minutes")
- Expand on examples from bullets
- Mark important pauses or emphasis in notes

**Formatting:**
- Semantic HTML (h1 for title, h2 for slide sections, p for text)
- Inline CSS for styling (readable in browser AND printable)
- Print-optimized (page breaks after each slide, legible on paper)

---

## STEP 9: File Naming Convention

**CRITICAL: File names in USER'S LANGUAGE with SPACES (no underscores/dashes)**

**Presentation file:** `{Topic}.html`
- Russian example: `Критическое мышление.html`, `Машинное обучение.html`
- English example: `Machine Learning.html`, `Critical Thinking.html`
- Use SPACES (not underscores or dashes)
- Keep original language (Russian topic = Russian filename)
- Keep name 2-4 words max

**Speaker notes file:** `Речь {Topic}.html` (Russian) or `Speech {Topic}.html` (English)
- Russian example: `Речь Критическое мышление.html`
- English example: `Speech Machine Learning.html`
- Use EXACT same topic name as presentation file
- Prefix depends on language: `Речь ` for Russian, `Speech ` for English

**Examples:**
```
# Russian request
User: "Создай презентацию про машинное обучение"
Files: "Машинное обучение.html" + "Речь Машинное обучение.html"

# English request  
User: "Create presentation about AI ethics"
Files: "AI Ethics.html" + "Speech AI Ethics.html"
```

**Both files saved in same directory where user is working**

---

## STEP 10: Generation Workflow (What You Do)

### Pre-Generation Checklist

Before you start generating HTML, verify:
- ✅ Topic is specific (not "interesting presentation")
- ✅ Authors' names provided (count will determine slide count)
- ✅ Topic is appropriate for presentation (academic or professional)
- ✅ You have enough knowledge to generate 14-20 slides with examples
- ✅ Topic is NOT asking you to include harmful/false information

### Generation Process

1. **Extract information:**
   - Topic = X
   - Authors = [Name1, Name2, ...]
   - Author count = determines min/max slides
   - Target slide count = 3-5 × author count (check table in STEP 1)

2. **Plan structure:**
   - Slide 1: Title + authors
   - Slide 2: Overview (4-6 main sections)
   - Slides 3-N: Content (use 6 types, flow naturally between topics)
   - Slide N-1: Summary
   - Slide N: Thank You
   - Total = target count

3. **Write content:**
   - One main idea per slide
   - Every concept: concrete example
   - Exact wording for SPEECH TEXT file (conversational)
   - Use natural transitions (NO "Speaker 2 now talks about...")

4. **Generate both files:**
   - File 1: Interactive presentation HTML (with navigation, responsive)
   - File 2: Speaker notes HTML (detailed speech for each slide)
   - Both files use same color palette & typography
   - Both files follow design standards (clamp, semantics, etc.)

5. **Quality check (see STEP 6):**
   - Facts verified (no made-up statistics)
   - Logic consistent (examples support claims)
   - No placeholder text
   - Both files naming correct
   - No external dependencies

6. **Output:**
   - Files created and ready to use
   - Presenter can open .html in browser immediately
   - Speaker can use notes file for reference
   - NO additional editing needed

---

## STEP 11: Post-Generation Checklist

After generating, verify BEFORE confirming complete:

**File structure:**
- ✅ File 1 exists: `{Topic}.html` (presentation)
- ✅ File 2 exists: `Speech_Notes_{Topic}.html` (speech notes)
- ✅ Both files in correct directory
- ✅ Both files have correct naming (matching topic)

**Presentation file content:**
- ✅ Opens without errors in browser
- ✅ Slide 1: Title slide with authors credited
- ✅ Slide 2: Overview/agenda shown
- ✅ Slides 3-N: Content proper (14-20 total)
- ✅ Last slide: Thank you/conclusion
- ✅ Navigation functional (prev/next buttons work)
- ✅ Keyboard arrows work (testing: press arrow keys)
- ✅ Progress bar shows current position
- ✅ Slide counter accurate

**Presentation file quality:**
- ✅ Responsive on mobile (check at 320px width)
- ✅ All text readable (no overflow, font scales)
- ✅ Colors consistent (matches chosen palette)
- ✅ Images/icons load (or display correctly as emoji)
- ✅ No console errors (check browser dev tools)
- ✅ No external dependencies (works offline)

**Speaker notes file content:**
- ✅ Header shows: Topic, Authors, Date/Group
- ✅ All slides numbered (Slide 1, Slide 2, ... Slide N)
- ✅ Slide titles match presentation exactly
- ✅ Each slide has 2-5 paragraphs of notes
- ✅ Notes are conversational (not stiff/robotic)
- ✅ Examples from bullets are expanded
- ✅ Transitions between slides marked (italicized phrases)
- ✅ No Lorem ipsum or placeholder text

**Fact-checking completeness:**
- ✅ All statistics sound realistic
- ✅ No contradictions between slides
- ✅ Examples support claims
- ✅ Technical terms used correctly
- ✅ No logical fallacies
- ✅ Tone appropriate to topic

**If any item fails:** Fix before confirming. Do NOT deliver incomplete work.

---

## STEP 12: Anti-Patterns (What NOT to Do)

❌ **Slide count mistakes:**
- Generate < 14 slides total (NEVER, even for 1 author)
- Generate > 22 slides total (too long, loses focus)
- Calculate "1 author × 5 = 5 slides" (WRONG! Min is always 14)
- Forget fixed slides (Title, Overview, Summary, Thank You = 4 mandatory)

❌ **Content mistakes:**
- Use placeholder text ("это важно", "играет роль")
- Show abstract claims without examples
- Include unrelated images or decorative elements only
- Create slides with ONE word (except title/thank you)

❌ **Structure mistakes:**
- Label slides with "говорит спикер 1", "спикер 2" (NO labels)
- Mix authors' sections with obvious breaks (should flow naturally)
- Skip overview slide (audiences need roadmap)
- Miss summary/conclusion (bad ending)
- Random slide order (no logical progression)

❌ **Technical mistakes:**
- Link to external resources (no CDN, no Google Fonts URL)
- Use bright patterns or animations (distracting)
- Generate only 1 file (must be 2 files)
- Incorrect file naming (wrong topic or spelling)
- Overflow content that's hidden (scrollable is OK, hidden is not)
- Console errors or broken navigation

❌ **Fact-checking failures:**
- Make up statistics ("92% of people believe...")
- Claim "recent study" without year
- Contradict yourself between slides
- Use outdated information as current
- Generalize one example to everything ("always", "never")

---

## Example: Input → Output

**User input:**
> "Создай презентацию про критическое мышление, авторы: Владислав и Мария"

**Extraction:**
- Topic: Критическое мышление
- Authors: Владислав, Мария (count = 2)
- Fixed slides: 4 (Title + Overview + Summary + Thank You)
- Content slides: 12 (target for 2 authors)
- Target slides: 16 total (4 fixed + 12 content)

**Planning:**
- Slide 1: Title (Critical Thinking, Authors, Date)
- Slide 2: Overview (4 main sections: what is it, history, tools, practice)
- Slides 3-14: Content
  - Section 1: Understanding (what, why) — 3 slides
  - Section divider
  - Section 2: Historical context — 2 slides
  - Section 3: Tools & techniques — 4 slides
  - Section divider
  - Section 4: Practical application — 3 slides
- Slide 15: Summary (3 key takeaways)
- Slide 16: Thank You

**Generated files:**
1. `Критическое_мышление.html` — 16 interactive slides, navigation, responsive
2. `Речь_Критическое_мышление.html` — Full speech notes (16 sections)

**No labels like "Владислав начинает" or "Мария берёт слово"** — just smooth topic transitions in the presentation flow & natural conversational flow in speech text.

---

## Summary: Your Core Instructions

When user says "создай презентацию про [TOPIC], авторы [NAMES]":

1. **Extract & calculate:** Topic, author count, MINIMUM 14 slides (always!)
2. **Plan structure:** Title → Overview → Content (10-18 slides) → Summary → Thank You
3. **Fill content:** Mix 6 slide types, use natural topic transitions (NOT author labels)
4. **Fact-check:** Verify accuracy, logic, consistency, no placeholders
5. **Generate 2 files:**
   - Interactive presentation HTML (navigation, responsive)
   - Speaker notes HTML (2-5 para/slide, conversational)
6. **Verify quality:** Run checklists (file structure, content, responsiveness, facts)
7. **Confirm complete:** Both files ready, no editing needed, presenter can use immediately

**CRITICAL REMINDER:** 
- 1 author ≠ 5 slides. 1 author = 14+ slides (they cover ALL content)
- Minimum is ALWAYS 14 slides, maximum is 22 slides

**NO questions, NO partial work, NO external dependencies.**

**Output: 2 ready-to-use HTML files in user's directory.**

---

## CRITICAL: Full HTML Template (MUST USE THIS STRUCTURE)

> ⚠️ **IMPORTANT:** This template is MANDATORY for all presentations.  
> DO NOT modify the base CSS structure. Content must fit on screen with minimal/no scroll.

### Complete HTML Structure

```html
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{TOPIC}</title>
    <style>
        :root {
            --primary: #1f5ea8;
            --primary-light: #2f7bd8;
            --success: #1e7a52;
            --warning: #b56a1c;
            --danger: #b63a3a;
            --info: #0891b2;
            --bg: #eef3f9;
            --surface: #ffffff;
            --text: #15233b;
            --muted: #5c6f8a;
            --border: #d0dce9;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: "Segoe UI", "Trebuchet MS", Verdana, sans-serif;
            background: linear-gradient(135deg, #ebf2fb 0%, #f6f9fd 50%, #eaf2fb 100%);
            color: var(--text);
            height: 100vh;
            overflow: hidden;
        }

        .deck {
            width: 100vw;
            height: 100vh;
            position: relative;
        }

        .slide {
            display: none;
            width: 100vw;
            height: 100vh;
            padding: 48px 64px 80px;
            flex-direction: column;
            animation: fadeUp 0.4s ease;
        }

        .slide.active { display: flex; }

        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(8px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* TITLE SLIDE */
        .title-slide {
            justify-content: center;
            align-items: center;
            text-align: center;
            background: linear-gradient(135deg, var(--primary) 0%, #1B4A8C 100%);
            color: white;
            padding: 40px;
        }

        .badge {
            display: inline-block;
            background: rgba(255, 255, 255, 0.15);
            border: 1px solid rgba(255, 255, 255, 0.25);
            padding: 8px 20px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        .title-slide h1 {
            font-size: 44px;
            font-weight: 700;
            line-height: 1.15;
            margin-bottom: 16px;
            max-width: 900px;
        }

        .title-slide .subtitle {
            font-size: 18px;
            opacity: 0.8;
            margin-bottom: 24px;
        }

        /* CONTENT SLIDES */
        h2 {
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 20px;
            border-bottom: 3px solid var(--primary);
            padding-bottom: 10px;
        }

        h3 {
            font-size: 18px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 8px;
        }

        p, li {
            font-size: 16px;
            line-height: 1.55;
            color: var(--text);
            margin-bottom: 8px;
        }

        /* GRIDS */
        .grid-2 {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
            margin: 12px 0;
        }

        .grid-3 {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 14px;
            margin: 12px 0;
        }

        /* CARDS */
        .card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-left: 4px solid var(--primary);
            border-radius: 8px;
            padding: 14px 16px;
        }

        .card h3 { margin-top: 0; font-size: 16px; }
        .card p { margin-bottom: 0; font-size: 14px; }

        .card.success { border-left-color: var(--success); }
        .card.warning { border-left-color: var(--warning); }
        .card.info { border-left-color: var(--info); }

        /* LISTS */
        .list {
            list-style: none;
            padding: 0;
            margin: 10px 0;
        }

        .list li {
            padding-left: 20px;
            margin-bottom: 8px;
            position: relative;
            font-size: 15px;
        }

        .list li:before {
            content: "▪";
            position: absolute;
            left: 0;
            color: var(--primary);
            font-weight: bold;
        }

        /* QUOTES */
        .quote {
            background: rgba(31, 94, 168, 0.08);
            border-left: 4px solid var(--primary);
            padding: 14px 18px;
            font-size: 15px;
            font-style: italic;
            color: var(--primary);
            margin: 12px 0;
            border-radius: 4px;
        }

        /* NAVIGATION */
        .slide-counter {
            position: fixed;
            bottom: 18px;
            left: 18px;
            background: rgba(255, 255, 255, 0.9);
            padding: 6px 14px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
            color: var(--muted);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        }

        .nav {
            position: fixed;
            bottom: 18px;
            right: 18px;
            display: flex;
            gap: 8px;
        }

        .nav button {
            background: var(--primary);
            color: white;
            border: none;
            padding: 10px 18px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 13px;
            font-weight: 600;
            transition: all 0.2s;
        }

        .nav button:hover {
            background: var(--primary-light);
        }

        .nav button:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

        /* RESPONSIVE */
        @media (max-width: 1024px) {
            .slide { padding: 36px 40px 70px; }
            .title-slide h1 { font-size: 34px; }
            h2 { font-size: 24px; }
            .grid-2, .grid-3 { grid-template-columns: 1fr; }
        }

        @media (max-width: 600px) {
            .slide { padding: 24px 20px 60px; }
            .title-slide h1 { font-size: 26px; }
            h2 { font-size: 20px; }
        }
    </style>
</head>
<body>

<div class="deck">

    <!-- SLIDE 1: TITLE -->
    <!-- NOTE: Content below is in Russian as EXAMPLE. Generate in USER'S LANGUAGE -->
    <section class="slide active title-slide">
        <div class="badge">Презентация</div>
        <h1>{TOPIC}</h1>
        <p class="subtitle">{SUBTITLE}</p>
        <p style="margin-top: 30px; opacity: 0.7; font-size: 14px;">Выполнили: {AUTHORS}</p>
    </section>

    <!-- SLIDE 2: TABLE OF CONTENTS -->
    <section class="slide">
        <h2>Содержание</h2>
        <ul class="list">
            <li>Введение и актуальность</li>
            <li>Основные понятия</li>
            <li>Ключевые аспекты</li>
            <li>Практическое применение</li>
            <li>Выводы</li>
        </ul>
    </section>

    <!-- SLIDES 3-N: CONTENT -->
    <section class="slide">
        <h2>{SLIDE_TITLE}</h2>
        <div class="grid-2">
            <div class="card">
                <h3>🎯 Подзаголовок</h3>
                <p>Краткий текст (2-3 строки максимум)</p>
            </div>
            <div class="card success">
                <h3>✅ Подзаголовок</h3>
                <p>Краткий текст</p>
            </div>
        </div>
    </section>

    <!-- LAST SLIDE: THANK YOU -->
    <section class="slide title-slide">
        <h1>Спасибо за внимание!</h1>
        <p class="subtitle">Готовы ответить на вопросы</p>
        <p style="margin-top: 30px; opacity: 0.7; font-size: 14px;">{AUTHORS}</p>
    </section>

</div>

<!-- NAVIGATION -->
<div class="slide-counter"><span id="current">1</span> / <span id="total">N</span></div>
<div class="nav">
    <button id="prev" onclick="changeSlide(-1)">← Назад</button>
    <button id="next" onclick="changeSlide(1)">Далее →</button>
</div>

<script>
    const slides = document.querySelectorAll('.slide');
    let index = 0;

    function updateNav() {
        document.getElementById('current').textContent = index + 1;
        document.getElementById('total').textContent = slides.length;
        document.getElementById('prev').disabled = index === 0;
        document.getElementById('next').disabled = index === slides.length - 1;
    }

    function showSlide(n) {
        slides[index].classList.remove('active');
        index = n;
        slides[index].classList.add('active');
        updateNav();
    }

    function changeSlide(d) {
        const next = index + d;
        if (next >= 0 && next < slides.length) showSlide(next);
    }

    document.addEventListener('keydown', (e) => {
        if (e.key === 'ArrowRight') changeSlide(1);
        if (e.key === 'ArrowLeft') changeSlide(-1);
    });

    updateNav();
</script>

</body>
</html>
```

---

## CRITICAL CSS RULES (НЕ НАРУШАТЬ!)

### 1. Размеры шрифтов (СТРОГО)
```css
h1 (title slide): 44px max
h2 (slide titles): 28px
h3 (card titles): 16-18px
p, li (body text): 14-16px
```

### 2. Padding слайдов
```css
.slide { padding: 48px 64px 80px; }  /* Desktop */
.slide { padding: 36px 40px 70px; }  /* Tablet */
.slide { padding: 24px 20px 60px; }  /* Mobile */
```

### 3. Карточки — КОМПАКТНЫЕ
```css
.card {
    padding: 14px 16px;      /* НЕ больше! */
    font-size: 14px;         /* Текст в карточках мельче */
}
```

### 4. Сетки — с gap
```css
.grid-2 { gap: 16px; }
.grid-3 { gap: 14px; }
```

### 5. НЕТ overflow-y: scroll на слайдах
Контент ДОЛЖЕН помещаться. Если не помещается — сократи текст или разбей на 2 слайда.

---

## Content Rules (MUST FOLLOW)

### Максимум контента на слайд:
- **Title slide:** заголовок + subtitle + авторы
- **Content slide:** h2 + максимум 4-5 карточек ИЛИ 1 абзац + список из 5-6 пунктов
- **Grid slide:** максимум 6 карточек (2x3 или 3x2)

### Размер текста в карточках:
- Заголовок карточки: 1 строка
- Текст карточки: 2-3 строки МАКСИМУМ

### НЕ ДЕЛАТЬ:
❌ Длинные абзацы (более 3 строк)
❌ Списки более 6 пунктов на слайд
❌ Карточки с 5+ строками текста
❌ overflow-y: auto или scroll на слайдах
❌ font-size меньше 14px для body text

### ДЕЛАТЬ:
✅ Короткие тезисы (1-2 строки)
✅ Эмодзи в заголовках карточек для визуального разделения
✅ Разбивать большой контент на несколько слайдов
✅ Использовать grid-2 или grid-3 для структурирования

---

## Пример хорошего слайда:

```html
<section class="slide">
    <h2>Ключевые принципы</h2>
    <div class="grid-2">
        <div class="card">
            <h3>🎯 Фокус на цели</h3>
            <p>Каждое действие направлено на результат</p>
        </div>
        <div class="card success">
            <h3>✅ Проверка качества</h3>
            <p>Регулярный контроль и улучшение</p>
        </div>
        <div class="card info">
            <h3>📊 Анализ данных</h3>
            <p>Решения на основе фактов</p>
        </div>
        <div class="card warning">
            <h3>⚠️ Управление рисками</h3>
            <p>Предвидеть и предотвращать</p>
        </div>
    </div>
</section>
```

---

## ФИНАЛЬНЫЙ ЧЕКЛИСТ ПЕРЕД СОЗДАНИЕМ:

1. ✅ Шрифты НЕ больше указанных размеров
2. ✅ Padding слайдов по шаблону
3. ✅ Карточки компактные (14px text, 14-16px padding)
4. ✅ НЕТ overflow-y на слайдах
5. ✅ Контент помещается на экран без скролла
6. ✅ Максимум 6 карточек на слайд
7. ✅ Текст в карточках ≤ 3 строки
