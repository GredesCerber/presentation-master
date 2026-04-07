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
- ✅ NO abstract statements like "this is important" or "plays a significant role"
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

### 🚨 CRITICAL: VISUAL RICHNESS REQUIREMENTS

**EVERY slide MUST contain visual elements!**

❌ **BAD (empty slide):**
```html
<section class="slide">
  <h2>Problem Causes</h2>
  <ul>
    <li>Stress and fatigue</li>
    <li>Lack of sleep</li>
    <li>Irregular schedule</li>
  </ul>
</section>
```

✅ **GOOD (visually rich slide):**
```html
<section class="slide">
  <h2>Problem Causes</h2>
  <div class="cols">
    <div class="flex-col gap-s">
      <div class="card card-accent ani ani-d1">
        <h3>😰 Stress and fatigue</h3>
        <p>Chronic workload depletes body resources</p>
      </div>
      <div class="card ani ani-d2">
        <h3>😴 Lack of sleep</h3>
        <p>Less than 7 hours disrupts recovery</p>
      </div>
    </div>
    <div class="callout ani ani-d3">
      <p class="big-emoji">⚠️</p>
      <p><strong>Important:</strong> These factors are interconnected</p>
    </div>
  </div>
</section>
```

### Required Visual Components

**Each slide MUST include at least 2 of:**

| Component | When to use | Example |
|-----------|-------------|---------|
| `.card` with emoji icon | For each point/idea | `<h3>📊 Analysis</h3>` |
| `.card-grid` | 3-6 parallel concepts | Benefits, stages, types |
| `.cols` / `.cols-37` | Theory + practice | Text left, example right |
| `.callout` | Important conclusion | Key thesis of slide |
| `.formula-box` | Numbers, formulas, dates | Statistics, key figures |
| `.prop-card` with `.icon` | Categories with icons | 4 types, 3 principles |

### FORBIDDEN to create slides with only:
- ❌ Bare `<ul><li>` without cards
- ❌ Single `<p>` paragraph
- ❌ Only heading `<h2>` + minimal text
- ❌ Content without emoji/icons

---

### 🚨 CRITICAL: NO DEAD SPACE

**"Dead space" problem** — when content takes 30-50% of screen, leaving the rest empty.

**Screen filling rules:**

1. **Columns:** Use `.cols` to divide the screen
2. **Grids:** Cards in `.grid-2` or `.grid-3` fill the width
3. **Flex-grow:** Elements stretch: `.flex-1 { flex: 1; }`
4. **Centering:** For minimal content — center vertically

**Padding and sizes:**
```css
/* Compact paddings */
.slide { padding: clamp(10px, 1.8vh, 24px) clamp(16px, 3vw, 48px); }
.card { padding: clamp(8px, 1.2vw, 16px); }
.gap-s { gap: clamp(6px, 0.9vh, 12px); }
.gap-m { gap: clamp(10px, 1.4vh, 18px); }
```

**DO NOT:**
- ❌ Padding larger than 48px on slides
- ❌ Lots of empty space between elements
- ❌ Small content in the center of a large screen
- ❌ Single column when two are possible

---

### 🎨 Default Style: Academic (Light + Blue/Teal)

**Academic style is used by default** — light background with green/teal accents. This is a proven style from examples.

Alternative styles are applied **only if user explicitly requests**:
```
"Create presentation in Glassmorphism style..."
"Make presentation with Brutalist style..."
```

### 🎯 DEFAULT STYLE: Academic (used always unless specified otherwise)

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

### 🔄 Alternative Styles (only on explicit user request)

Used ONLY if user explicitly specified style in request.

---

### Alt Style 1: GLASSMORPHISM

**Trigger:** User specified "Glassmorphism style" or "glass style"

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

**Trigger:** User specified "Minimal Dark" or "dark minimalist"

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

**Trigger:** User specified "Minimal Light", "light", "white background"

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

**Trigger:** User specified "Gradient Mesh", "gradient", "colorful"

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

**Trigger:** User specified "Neomorphism", "soft shadows"

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

**Trigger:** User specified "Brutalist", "bold"

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

**Trigger:** User specified "Corporate", "business style"

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

## STEP 7.5: MANDATORY CSS COMPONENTS

> Every presentation MUST include these CSS classes. Without them, slides will be empty and ugly.

### Layout Components

```css
/* Two-column layout */
.cols {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: clamp(10px, 1.6vw, 22px);
  align-items: start;
}

/* Three-column layout */
.cols-3 {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: clamp(10px, 1.6vw, 22px);
}

/* Asymmetric 2:3 layout */
.cols-37 {
  display: grid;
  grid-template-columns: 2fr 3fr;
  gap: clamp(10px, 1.5vw, 22px);
  align-items: center;
}

/* Flexbox helpers */
.flex-col { display: flex; flex-direction: column; }
.flex-1 { flex: 1; }
.gap-xs { gap: clamp(4px, 0.6vh, 8px); }
.gap-s { gap: clamp(6px, 0.9vh, 12px); }
.gap-m { gap: clamp(10px, 1.4vh, 18px); }
.v-center { justify-content: center; }
.items-center { align-items: center; }
.center { display: flex; align-items: center; justify-content: center; }

@media (max-width: 800px) {
  .cols, .cols-3, .cols-37 { grid-template-columns: 1fr; }
}
```

### Card Components

```css
/* Base card */
.card {
  background: var(--card);
  border-radius: var(--radius);
  padding: clamp(10px, 1.3vw, 18px);
  box-shadow: 0 3px 12px var(--shadow);
  border: 1px solid var(--border);
}

/* Card with accent border on left */
.card-accent {
  border-left: 4px solid var(--accent);
}

/* Card grid (auto-fit) */
.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(190px, 1fr));
  gap: clamp(8px, 1vw, 14px);
}

/* Card with icon on top */
.prop-card {
  text-align: center;
  padding: clamp(8px, 1.2vw, 16px);
}
.prop-card .icon {
  font-size: clamp(26px, 3vw, 38px);
  margin-bottom: 4px;
}
```

### Highlight Components

```css
/* Callout block for important content */
.callout {
  background: var(--accent-light);
  border-radius: 12px;
  padding: 10px 12px;
  text-align: center;
}

/* Formula/number box */
.formula-box {
  background: #fff;
  border-radius: var(--radius);
  padding: clamp(10px, 1.5vw, 22px);
  text-align: center;
  box-shadow: 0 2px 12px var(--shadow);
}

/* Example block */
.example-block {
  background: #f2faf6;
  border-left: 4px solid var(--accent);
  border-radius: 0 10px 10px 0;
  padding: clamp(10px, 1.3vw, 14px);
  margin: 8px 0;
}
.example-label {
  font-weight: 700;
  color: var(--accent);
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  display: block;
  margin-bottom: 4px;
}

/* Large emoji */
.big-emoji {
  font-size: clamp(28px, 3.5vw, 44px);
}
```

### Animation Components

```css
/* Base fade-in animation */
.ani {
  opacity: 0;
  transform: translateY(18px);
  transition: opacity 0.45s ease, transform 0.45s ease;
}
.ani.show {
  opacity: 1;
  transform: translateY(0);
}

/* Delays for sequential appearance */
.ani-d1 { transition-delay: 0.08s; }
.ani-d2 { transition-delay: 0.16s; }
.ani-d3 { transition-delay: 0.24s; }
.ani-d4 { transition-delay: 0.32s; }
.ani-d5 { transition-delay: 0.40s; }
.ani-d6 { transition-delay: 0.48s; }
.ani-d7 { transition-delay: 0.56s; }
```

### Comparison Components

```css
/* Good/bad comparison box */
.comparison-box {
  border-radius: 12px;
  padding: clamp(10px, 1.3vw, 16px);
  flex: 1;
}
.comparison-good {
  background: #e8f5e9;
  border-left: 4px solid var(--good);
}
.comparison-bad {
  background: #ffebee;
  border-left: 4px solid var(--bad);
}

/* Step cards */
.step-card {
  background: var(--card);
  border-radius: 10px;
  padding: clamp(10px, 1.3vw, 14px);
  border: 1px solid var(--border);
  display: flex;
  gap: 10px;
  align-items: flex-start;
}
.step-card .step-num {
  background: var(--accent);
  color: #fff;
  border-radius: 50%;
  width: 32px;
  height: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  font-weight: 700;
  font-size: 14px;
}
```

### Badge Components

```css
/* Section badge */
.badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 7px 13px;
  border-radius: 999px;
  background: var(--accent-light);
  border: 1px solid var(--accent-border);
  color: var(--accent);
  font-weight: 700;
  width: fit-content;
}

/* Decorative line under heading */
.title-decoration {
  width: clamp(70px, 12vw, 120px);
  height: 4px;
  border-radius: 2px;
  background: linear-gradient(90deg, var(--accent), var(--accent-2));
  margin: 0.45em auto;
}
```

---

## STEP 7.6: SVG ICON LIBRARY

> Use these inline SVG icons instead of or alongside emoji for a more professional look.

### Chart Icons

```html
<!-- Bar Chart -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <rect x="3" y="12" width="4" height="9" rx="1"/>
  <rect x="10" y="6" width="4" height="15" rx="1"/>
  <rect x="17" y="9" width="4" height="12" rx="1"/>
</svg>

<!-- Line Chart / Trend Up -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <polyline points="3,17 9,11 13,15 21,7"/>
  <polyline points="17,7 21,7 21,11"/>
</svg>

<!-- Pie Chart -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <circle cx="12" cy="12" r="9"/>
  <path d="M12 3 L12 12 L21 12" stroke-linecap="round"/>
</svg>

<!-- Analytics / Dashboard -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <rect x="3" y="3" width="7" height="7" rx="1"/>
  <rect x="14" y="3" width="7" height="4" rx="1"/>
  <rect x="14" y="10" width="7" height="11" rx="1"/>
  <rect x="3" y="13" width="7" height="8" rx="1"/>
</svg>
```

### Process Icons

```html
<!-- Checkmark / Success -->
<svg class="icon-svg success" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
  <polyline points="4,12 9,17 20,6"/>
</svg>

<!-- Warning / Alert -->
<svg class="icon-svg warning" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M12 2 L22 20 H2 Z"/>
  <line x1="12" y1="9" x2="12" y2="13"/>
  <circle cx="12" cy="17" r="1" fill="currentColor"/>
</svg>

<!-- Error / Cross -->
<svg class="icon-svg danger" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
  <line x1="6" y1="6" x2="18" y2="18"/>
  <line x1="18" y1="6" x2="6" y2="18"/>
</svg>

<!-- Info -->
<svg class="icon-svg info" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <circle cx="12" cy="12" r="9"/>
  <line x1="12" y1="11" x2="12" y2="16"/>
  <circle cx="12" cy="8" r="0.5" fill="currentColor"/>
</svg>

<!-- Arrow Right / Flow -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <line x1="4" y1="12" x2="20" y2="12"/>
  <polyline points="14,6 20,12 14,18"/>
</svg>

<!-- Cycle / Refresh -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M3 12a9 9 0 1 0 9-9"/>
  <polyline points="3,3 3,9 9,9"/>
</svg>
```

### Concept Icons

```html
<!-- Lightbulb / Idea -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M9 21h6M12 3a6 6 0 0 1 4 10.5V17H8v-3.5A6 6 0 0 1 12 3z"/>
</svg>

<!-- Target / Goal -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <circle cx="12" cy="12" r="9"/>
  <circle cx="12" cy="12" r="5"/>
  <circle cx="12" cy="12" r="1" fill="currentColor"/>
</svg>

<!-- Users / Team -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <circle cx="9" cy="7" r="3"/>
  <path d="M3 21v-2a4 4 0 0 1 4-4h4a4 4 0 0 1 4 4v2"/>
  <circle cx="17" cy="7" r="2.5"/>
  <path d="M21 21v-1.5a3 3 0 0 0-2-2.8"/>
</svg>

<!-- Book / Learning -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/>
  <path d="M4 4.5A2.5 2.5 0 0 1 6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15z"/>
</svg>

<!-- Settings / Gear -->
<svg class="icon-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <circle cx="12" cy="12" r="3"/>
  <path d="M12 1v2M12 21v2M4.22 4.22l1.42 1.42M18.36 18.36l1.42 1.42M1 12h2M21 12h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42"/>
</svg>
```

### SVG Icon CSS

```css
/* SVG Icon Base Styles */
.icon-svg {
  width: 24px;
  height: 24px;
  stroke: var(--accent);
  flex-shrink: 0;
}

.icon-svg.lg { width: 32px; height: 32px; }
.icon-svg.xl { width: 48px; height: 48px; }

.icon-svg.success { stroke: var(--success, #22c55e); }
.icon-svg.warning { stroke: var(--warning, #f59e0b); }
.icon-svg.danger { stroke: var(--danger, #ef4444); }
.icon-svg.info { stroke: var(--info, #3b82f6); }

/* Card with SVG icon */
.card-icon {
  display: flex;
  gap: 12px;
  align-items: flex-start;
}
.card-icon .icon-svg {
  margin-top: 2px;
}
```

### Usage Examples

```html
<!-- Card with SVG icon -->
<div class="card card-icon">
  <svg class="icon-svg success" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
    <polyline points="4,12 9,17 20,6"/>
  </svg>
  <div>
    <h3>Quality Assured</h3>
    <p>All tests passed successfully</p>
  </div>
</div>

<!-- Large centered icon -->
<div class="callout">
  <svg class="icon-svg xl" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
    <path d="M9 21h6M12 3a6 6 0 0 1 4 10.5V17H8v-3.5A6 6 0 0 1 12 3z"/>
  </svg>
  <p><strong>Key Insight:</strong> Innovation drives growth</p>
</div>
```

---

## STEP 7.7: INTERACTIVE COMPONENTS

> Add interactivity to make presentations engaging. All JavaScript is inline, no dependencies.

### Tab Navigation

```html
<div class="tabs-container">
  <div class="tabs-nav">
    <button class="tab-btn active" data-tab="tab1">Overview</button>
    <button class="tab-btn" data-tab="tab2">Details</button>
    <button class="tab-btn" data-tab="tab3">Examples</button>
  </div>
  <div class="tab-content active" id="tab1">
    <p>Overview content here...</p>
  </div>
  <div class="tab-content" id="tab2">
    <p>Detailed information...</p>
  </div>
  <div class="tab-content" id="tab3">
    <p>Practical examples...</p>
  </div>
</div>
```

```css
/* Tabs CSS */
.tabs-container {
  background: var(--surface);
  border-radius: 12px;
  overflow: hidden;
  border: 1px solid var(--border);
}

.tabs-nav {
  display: flex;
  background: var(--bg);
  border-bottom: 1px solid var(--border);
}

.tab-btn {
  flex: 1;
  padding: 12px 16px;
  border: none;
  background: transparent;
  cursor: pointer;
  font-weight: 600;
  color: var(--muted);
  transition: all 0.2s;
}

.tab-btn:hover {
  background: rgba(0,0,0,0.05);
}

.tab-btn.active {
  color: var(--accent);
  background: var(--surface);
  border-bottom: 2px solid var(--accent);
}

.tab-content {
  display: none;
  padding: 16px;
}

.tab-content.active {
  display: block;
  animation: fadeIn 0.3s ease;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(8px); }
  to { opacity: 1; transform: translateY(0); }
}
```

```javascript
// Tabs JavaScript
document.querySelectorAll('.tab-btn').forEach(btn => {
  btn.addEventListener('click', () => {
    const container = btn.closest('.tabs-container');
    container.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
    container.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));
    btn.classList.add('active');
    container.querySelector('#' + btn.dataset.tab).classList.add('active');
  });
});
```

### Reveal / Accordion Blocks

```html
<div class="reveal-block">
  <button class="reveal-btn">
    <span class="reveal-icon">▶</span>
    Click to reveal the answer
  </button>
  <div class="reveal-content">
    <p>The hidden answer or detailed explanation appears here...</p>
  </div>
</div>
```

```css
/* Reveal/Accordion CSS */
.reveal-block {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 10px;
  overflow: hidden;
  margin: 8px 0;
}

.reveal-btn {
  width: 100%;
  padding: 14px 16px;
  border: none;
  background: linear-gradient(135deg, var(--accent-light), rgba(255,255,255,0.8));
  cursor: pointer;
  text-align: left;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 10px;
  transition: background 0.2s;
}

.reveal-btn:hover {
  background: var(--accent-light);
}

.reveal-icon {
  transition: transform 0.3s;
  font-size: 12px;
}

.reveal-block.open .reveal-icon {
  transform: rotate(90deg);
}

.reveal-content {
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.3s ease, padding 0.3s ease;
}

.reveal-block.open .reveal-content {
  max-height: 500px;
  padding: 16px;
}
```

```javascript
// Reveal JavaScript
document.querySelectorAll('.reveal-btn').forEach(btn => {
  btn.addEventListener('click', () => {
    btn.closest('.reveal-block').classList.toggle('open');
  });
});
```

### Step-by-Step Reveal

```html
<div class="steps-reveal">
  <div class="step-item" data-step="1">
    <div class="step-marker">1</div>
    <div class="step-text">First, analyze the problem</div>
  </div>
  <div class="step-item hidden" data-step="2">
    <div class="step-marker">2</div>
    <div class="step-text">Then, design the solution</div>
  </div>
  <div class="step-item hidden" data-step="3">
    <div class="step-marker">3</div>
    <div class="step-text">Finally, implement and test</div>
  </div>
  <button class="steps-next-btn">Next Step →</button>
</div>
```

```css
/* Steps Reveal CSS */
.steps-reveal {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.step-item {
  display: flex;
  align-items: center;
  gap: 14px;
  padding: 14px;
  background: var(--surface);
  border-radius: 10px;
  border-left: 4px solid var(--accent);
  opacity: 1;
  transform: translateX(0);
  transition: all 0.4s ease;
}

.step-item.hidden {
  opacity: 0.3;
  transform: translateX(20px);
  border-left-color: var(--border);
}

.step-marker {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background: var(--accent);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 700;
  flex-shrink: 0;
}

.step-item.hidden .step-marker {
  background: var(--muted);
}

.steps-next-btn {
  align-self: flex-end;
  padding: 10px 20px;
  background: var(--accent);
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 600;
}
```

```javascript
// Steps Reveal JavaScript
document.querySelectorAll('.steps-next-btn').forEach(btn => {
  btn.addEventListener('click', () => {
    const container = btn.closest('.steps-reveal');
    const hidden = container.querySelector('.step-item.hidden');
    if (hidden) {
      hidden.classList.remove('hidden');
      if (!container.querySelector('.step-item.hidden')) {
        btn.textContent = '✓ Complete';
        btn.disabled = true;
      }
    }
  });
});
```

### Interactive Counter / Stats

```html
<div class="stat-counter" data-target="95" data-suffix="%">
  <span class="stat-value">0</span>
  <span class="stat-label">Success Rate</span>
</div>
```

```css
/* Counter CSS */
.stat-counter {
  text-align: center;
  padding: 20px;
}

.stat-value {
  font-size: 48px;
  font-weight: 800;
  color: var(--accent);
  display: block;
}

.stat-label {
  font-size: 14px;
  color: var(--muted);
  text-transform: uppercase;
  letter-spacing: 1px;
}
```

```javascript
// Counter Animation JavaScript
function animateCounters() {
  document.querySelectorAll('.stat-counter').forEach(counter => {
    const target = parseInt(counter.dataset.target);
    const suffix = counter.dataset.suffix || '';
    const valueEl = counter.querySelector('.stat-value');
    let current = 0;
    const increment = target / 50;
    const timer = setInterval(() => {
      current += increment;
      if (current >= target) {
        current = target;
        clearInterval(timer);
      }
      valueEl.textContent = Math.round(current) + suffix;
    }, 30);
  });
}
// Call when slide becomes active
```

---

## STEP 7.8: COLOR THEMES & TOPIC-BASED PALETTES

### 🎨 INTELLIGENT THEME SELECTION

The agent should choose colors based on the **topic context**:

| Topic Category | Recommended Theme | Why |
|----------------|-------------------|-----|
| Technology, AI, Programming | **Tech Blue** | Professional, modern, trust |
| Science, Research, Medicine | **Scientific Teal** | Clarity, precision, reliability |
| Business, Finance, Economics | **Corporate Navy** | Authority, stability, professionalism |
| Environment, Nature, Sustainability | **Nature Green** | Growth, harmony, eco-friendly |
| Education, Psychology, Social | **Warm Orange** | Friendly, approachable, engaging |
| Art, Design, Creativity | **Creative Purple** | Innovation, imagination, uniqueness |
| Health, Wellness, Sports | **Vibrant Coral** | Energy, vitality, positivity |

### Theme 1: TECH BLUE (Default for technical topics)

```css
:root {
  --bg: #f0f4f8;
  --surface: #ffffff;
  --text: #1a2b4a;
  --muted: #64748b;
  --border: #e2e8f0;
  --accent: #2563eb;
  --accent-light: #dbeafe;
  --accent-border: #93c5fd;
  --accent-2: #0ea5e9;
  --success: #10b981;
  --warning: #f59e0b;
  --danger: #ef4444;
  --info: #06b6d4;
}
```

### Theme 2: SCIENTIFIC TEAL (Research, Medicine)

```css
:root {
  --bg: #f0fdfa;
  --surface: #ffffff;
  --text: #134e4a;
  --muted: #5eead4;
  --border: #ccfbf1;
  --accent: #0d9488;
  --accent-light: #ccfbf1;
  --accent-border: #5eead4;
  --accent-2: #06b6d4;
  --success: #22c55e;
  --warning: #eab308;
  --danger: #f43f5e;
  --info: #0891b2;
}
```

### Theme 3: CORPORATE NAVY (Business, Finance)

```css
:root {
  --bg: #f8fafc;
  --surface: #ffffff;
  --text: #0f172a;
  --muted: #475569;
  --border: #e2e8f0;
  --accent: #1e40af;
  --accent-light: #dbeafe;
  --accent-border: #93c5fd;
  --accent-2: #3b82f6;
  --success: #059669;
  --warning: #d97706;
  --danger: #dc2626;
  --info: #0284c7;
}
```

### Theme 4: NATURE GREEN (Environment, Sustainability)

```css
:root {
  --bg: #f0fdf4;
  --surface: #ffffff;
  --text: #14532d;
  --muted: #4ade80;
  --border: #bbf7d0;
  --accent: #16a34a;
  --accent-light: #dcfce7;
  --accent-border: #86efac;
  --accent-2: #22c55e;
  --success: #15803d;
  --warning: #ca8a04;
  --danger: #e11d48;
  --info: #0891b2;
}
```

### Theme 5: WARM ORANGE (Education, Social)

```css
:root {
  --bg: #fffbeb;
  --surface: #ffffff;
  --text: #78350f;
  --muted: #92400e;
  --border: #fde68a;
  --accent: #d97706;
  --accent-light: #fef3c7;
  --accent-border: #fcd34d;
  --accent-2: #f59e0b;
  --success: #16a34a;
  --warning: #ea580c;
  --danger: #dc2626;
  --info: #0284c7;
}
```

### Theme 6: CREATIVE PURPLE (Art, Design)

```css
:root {
  --bg: #faf5ff;
  --surface: #ffffff;
  --text: #3b0764;
  --muted: #7c3aed;
  --border: #e9d5ff;
  --accent: #7c3aed;
  --accent-light: #ede9fe;
  --accent-border: #c4b5fd;
  --accent-2: #a855f7;
  --success: #22c55e;
  --warning: #f59e0b;
  --danger: #f43f5e;
  --info: #6366f1;
}
```

### Theme 7: VIBRANT CORAL (Health, Sports)

```css
:root {
  --bg: #fff1f2;
  --surface: #ffffff;
  --text: #881337;
  --muted: #be123c;
  --border: #fecdd3;
  --accent: #e11d48;
  --accent-light: #ffe4e6;
  --accent-border: #fda4af;
  --accent-2: #f43f5e;
  --success: #10b981;
  --warning: #f59e0b;
  --danger: #dc2626;
  --info: #0ea5e9;
}
```

### Custom Theme Generation

If the topic doesn't fit predefined categories, the agent CAN create a custom theme:

```css
/* Custom Theme Template */
:root {
  /* Base colors - derive from topic keywords */
  --bg: /* Light background, low saturation */;
  --surface: #ffffff;
  --text: /* Dark version of accent, high contrast */;
  --muted: /* Medium version of accent */;
  --border: /* Very light accent */;
  
  /* Accent colors - main topic color */
  --accent: /* Primary brand/topic color */;
  --accent-light: /* 10% opacity of accent */;
  --accent-border: /* 30% opacity of accent */;
  --accent-2: /* Complementary or analogous color */;
  
  /* Semantic colors - keep standard */
  --success: #10b981;
  --warning: #f59e0b;
  --danger: #ef4444;
  --info: #0ea5e9;
}
```

### Theme Selection Logic

```
1. Analyze topic keywords
2. Match to category (see table above)
3. Apply corresponding theme
4. If no match → use Tech Blue (default) OR create custom theme
5. User can override: "Create presentation about X in purple/warm/dark style"
```

---

## 🚀 CREATIVE FREEDOM RULE

### When to Deviate from Template

The agent MAY deviate from standard templates when:

1. **Topic requires special visualization**
   - Math/Statistics → Custom formulas, interactive graphs
   - Timeline/History → Custom timeline component
   - Process/Workflow → Custom flowchart
   - Comparison → Custom comparison matrix

2. **Innovation improves quality**
   - If a creative solution better communicates the message
   - If standard layout feels forced for specific content
   - If interactive element would significantly improve engagement

3. **User implies creativity**
   - "Make it impressive"
   - "Something unique"
   - "Stand out"
   - "Creative approach"

### Creative Freedom Guidelines

```
✅ ALLOWED innovations:
- Custom CSS animations beyond standard .ani
- Unique card layouts for specific content
- Interactive diagrams/charts with inline JavaScript
- Creative use of SVG graphics
- Non-standard grid arrangements
- Custom color gradients that fit topic
- Experimental typography for titles

❌ STILL FORBIDDEN:
- External dependencies (CDN, fonts, libraries)
- Content that doesn't fit on screen
- Unreadable font sizes
- Missing navigation
- Broken responsiveness
- Empty/placeholder content
```

### Innovation Examples

**Example 1: Math presentation might have:**
```html
<div class="formula-showcase">
  <div class="formula-main">E = mc²</div>
  <div class="formula-breakdown">
    <span class="var" data-label="Energy">E</span>
    <span class="op">=</span>
    <span class="var" data-label="Mass">m</span>
    <span class="var" data-label="Speed of Light">c</span>
    <span class="exp">²</span>
  </div>
</div>
```

**Example 2: History presentation might have:**
```html
<div class="timeline-horizontal">
  <div class="timeline-item" style="--year: '1969'">
    <div class="timeline-marker"></div>
    <div class="timeline-content">Moon Landing</div>
  </div>
  <!-- More items -->
</div>
```

**Example 3: Process presentation might have:**
```html
<div class="flowchart">
  <div class="flow-node start">Input</div>
  <div class="flow-arrow"></div>
  <div class="flow-node process">Processing</div>
  <div class="flow-arrow"></div>
  <div class="flow-node end">Output</div>
</div>
```

### Quality Over Template

> **Remember:** A creative deviation that communicates better is PREFERRED over rigid template adherence that feels forced.

The goal is **effective communication**, not template compliance.

---

## 🎨 ADVANCED CREATIVE STYLES (Examples from Real Presentations)

### Style: DARK NEON (Gaming/Tech)

Perfect for: Gaming topics, esports, technology, youth audiences

```css
:root {
  --pokemon-purple: #6C5CE7;
  --pokemon-blue: #0984E3;
  --pokemon-yellow: #FDCB6E;
  --pokemon-red: #E17055;
  --pokemon-pink: #FD79A8;
  --pokemon-cyan: #00CEC9;
  --pokemon-green: #00B894;
  --glow-purple: rgba(108, 92, 231, 0.6);
}

body {
  font-family: 'Montserrat', sans-serif;
  background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f0f23 100%);
  color: #fff;
}

/* Gradient text titles */
.main-title {
  font-weight: 900;
  background: linear-gradient(135deg, var(--pokemon-yellow) 0%, var(--pokemon-red) 50%, var(--pokemon-pink) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: titleGlow 3s ease-in-out infinite alternate;
}

@keyframes titleGlow {
  0% { filter: drop-shadow(0 0 20px var(--glow-yellow)); }
  100% { filter: drop-shadow(0 0 40px var(--glow-purple)); }
}

/* Neon cards */
.function-card {
  padding: 30px;
  background: rgba(108, 92, 231, 0.1);
  border-radius: 20px;
  border: 1px solid rgba(108, 92, 231, 0.3);
  transition: all 0.4s ease;
}

.function-card:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 40px rgba(108, 92, 231, 0.3);
}

/* Floating particles */
.particle {
  position: absolute;
  border-radius: 50%;
  animation: float 15s infinite ease-in-out;
  opacity: 0.5;
}

@keyframes float {
  0%, 100% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
  10% { opacity: 0.5; }
  90% { opacity: 0.5; }
  100% { transform: translateY(-100px) rotate(720deg); opacity: 0; }
}
```

### Style: NATURE IMMERSIVE (Environment/Biology)

Perfect for: Environmental topics, biology, nature, sustainability

```css
body {
  font-family: 'Roboto', sans-serif;
  background: 
    linear-gradient(to bottom,
      #2d5016 0%, #3d6b1f 15%, #4a7c2a 30%,
      #5a9234 45%, #6ba83d 60%, #5a9234 75%,
      #4a7c2a 90%, #3d6b1f 100%
    );
  min-height: 100vh;
}

/* Floating grass platforms */
body::before {
  content: '';
  position: absolute;
  bottom: 15%;
  left: 10%;
  width: 280px;
  height: 90px;
  background: radial-gradient(ellipse at center, 
    #7bc850 0%, #6ba83d 40%, #5a9234 70%, transparent 100%
  );
  border-radius: 50%;
  opacity: 0.4;
  animation: float 6s ease-in-out infinite;
}

/* Grass blade elements */
.grass-blade {
  position: absolute;
  width: 4px;
  background: linear-gradient(to top, #4a7c2a, #7bc850);
  border-radius: 2px 2px 0 0;
  animation: grassSway 3s ease-in-out infinite;
}

@keyframes grassSway {
  0%, 100% { transform: rotate(0deg); }
  25% { transform: rotate(3deg); }
  75% { transform: rotate(-3deg); }
}

/* Content frame */
.nature-frame {
  background: #f8f8f8;
  border: 6px solid #2c3e50;
  border-radius: 15px;
  box-shadow: 
    0 0 0 3px #f8f8f8,
    0 0 0 6px #2c3e50,
    0 15px 40px rgba(0, 0, 0, 0.5);
  padding: 40px 60px;
}
```

### Style: ACADEMIC CLASSIC (Research/Formal)

Perfect for: Academic papers, research presentations, formal settings

```css
:root {
  --primary: #1e3a5f;
  --secondary: #2d5a87;
  --accent: #d4af37;
  --bg-warm: #faf8f5;
  --text-dark: #2c3e50;
}

body {
  font-family: 'Source Sans Pro', sans-serif;
  background: linear-gradient(135deg, #f5f7fa 0%, #e4e9f2 100%);
  color: var(--text-dark);
}

h1, h2 {
  font-family: 'Crimson Text', serif;
  color: var(--primary);
}

/* Content card with accent border */
.content-card {
  background: white;
  border-radius: 16px;
  padding: 3rem;
  max-width: 1100px;
  box-shadow: 0 10px 40px rgba(30, 58, 95, 0.1);
  position: relative;
}

.content-card::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 4px;
  background: var(--accent);
}

/* Highlight box */
.highlight-box {
  background: linear-gradient(to right, #f8f9fa, #ffffff);
  border-left: 4px solid var(--secondary);
  padding: 1.5rem;
  border-radius: 0 8px 8px 0;
}

/* Interactive reveal button */
.btn-toggle {
  background: var(--secondary);
  color: white;
  border: none;
  padding: 0.6rem 1.5rem;
  border-radius: 25px;
  cursor: pointer;
  transition: all 0.3s ease;
  font-weight: 600;
}

.btn-toggle:hover {
  background: var(--primary);
  transform: scale(1.05);
  box-shadow: 0 4px 15px rgba(30, 58, 95, 0.3);
}
```

### Style: COMPARISON SPLIT (Pros/Cons)

Perfect for: Comparison topics, debates, pros and cons

```css
/* Comparison card layout */
.comparison-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 40px;
}

.comparison-card {
  padding: 35px;
  border-radius: 25px;
  transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.comparison-card:hover {
  transform: translateY(-10px) scale(1.02);
}

/* Positive card */
.card-constructive {
  background: linear-gradient(135deg, rgba(0, 184, 148, 0.25), rgba(0, 206, 201, 0.15));
  border: 2px solid #00B894;
  box-shadow: 0 20px 60px rgba(0, 184, 148, 0.25);
}

.card-constructive:hover {
  box-shadow: 0 30px 80px rgba(0, 184, 148, 0.4);
}

/* Negative card */
.card-destructive {
  background: linear-gradient(135deg, rgba(225, 112, 85, 0.25), rgba(253, 121, 168, 0.15));
  border: 2px solid #E17055;
  box-shadow: 0 20px 60px rgba(225, 112, 85, 0.25);
}

/* List with icons */
.card-list li {
  padding: 12px 0;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  display: flex;
  align-items: center;
  gap: 12px;
  transition: all 0.3s ease;
}

.card-list li:hover {
  padding-left: 12px;
}
```

### 3D Slide Transitions (Advanced)

```css
/* Multiple transition types */
.slide.transition-zoom {
  transition: all 0.7s cubic-bezier(0.4, 0, 0.2, 1);
  transform: scale(0.8) rotateY(15deg);
}

.slide.transition-slide-up {
  transition: all 0.6s cubic-bezier(0.25, 0.46, 0.45, 0.94);
  transform: translateY(100%);
}

.slide.transition-rotate {
  transition: all 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  transform: rotateX(-90deg) scale(0.9);
  transform-origin: center top;
}

.slide.transition-flip {
  transition: all 0.7s ease;
  transform: perspective(1000px) rotateY(-90deg);
  transform-origin: left center;
}

.slide.transition-cube {
  transition: all 0.8s cubic-bezier(0.645, 0.045, 0.355, 1);
  transform: translateZ(-500px) rotateY(90deg);
}

.slide.active {
  opacity: 1;
  visibility: visible;
  transform: translateY(0) scale(1) rotateX(0deg) rotateY(0deg) translateZ(0);
}
```

### Navigation Styles (Modern)

**CRITICAL LAYOUT RULE: Navigation must NOT overlap content!**

Use bottom-docked navigation (full width at bottom) instead of floating centered:

```css
/* CORRECT: Bottom-docked navigation - no content overlap */
.slides-container {
  flex: 1;
  position: relative;
  overflow: hidden;
  margin-bottom: 80px; /* Space for navigation */
}

.nav-container {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 16px;
  background: rgba(26, 26, 46, 0.95);
  backdrop-filter: blur(20px);
  padding: 16px 24px;
  border-top: 1px solid rgba(108, 92, 231, 0.3);
  z-index: 1000;
}

/* Nav buttons */
.nav-btn {
  width: 48px;
  height: 48px;
  border-radius: 50%;
  border: none;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  color: white;
  cursor: pointer;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}

.nav-btn:hover:not(:disabled) {
  transform: scale(1.1);
}

.nav-btn:disabled {
  opacity: 0.3;
  cursor: not-allowed;
}

/* Dot indicators */
.dots {
  display: flex;
  gap: 8px;
}

.dot {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.2);
  cursor: pointer;
  transition: all 0.3s ease;
}

.dot.active {
  background: var(--accent);
  box-shadow: 0 0 15px var(--glow);
  transform: scale(1.3);
}

.slide-counter {
  color: var(--text-secondary);
  font-size: 0.95em;
  min-width: 50px;
  text-align: center;
}
```

**Anti-pattern (DO NOT USE):**
```css
/* WRONG: Floating centered navigation - overlaps content! */
.nav-container {
  position: fixed;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
  border-radius: 50px;
  /* This WILL overlap slide content on smaller screens */
}
```

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
- First person plural ("we've covered", "let's think")
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
- Use placeholder text ("this is important", "plays a role")
- Show abstract claims without examples
- Include unrelated images or decorative elements only
- Create slides with ONE word (except title/thank you)

❌ **Structure mistakes:**
- Label slides with "Speaker 1 says...", "Speaker 2..." (NO labels)
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
- **Floating centered navigation that overlaps content** (use bottom-docked instead)
- **No margin-bottom on slides-container** (navigation will cover content)

❌ **Fact-checking failures:**
- Make up statistics ("92% of people believe...")
- Claim "recent study" without year
- Contradict yourself between slides
- Use outdated information as current
- Generalize one example to everything ("always", "never")

❌ **🚨 VISUAL/LAYOUT FAILURES (CRITICAL!):**
- **Empty slides** — only `<ul><li>` without cards, icons, callout
- **Dead space** — content uses 30-50% of screen, rest is empty
- **No visual elements** — slide without emoji, icons or highlights
- **Single column when two possible** — not using `.cols` for separation
- **align-content: start without reason** — content pushed to top
- **Too large padding** — padding greater than `clamp(14px, 2.2vh, 26px)`
- **No fade-in animations** — elements missing `.ani` classes
- **No badge/section divider** — slides without section context labels
- **Monotonous design** — all cards identical, no accents
- **List without context** — `<ul>` without accompanying `.card` or `.callout`

### Comparison: BAD vs GOOD slide

**❌ BAD (dead space, no visualization):**
```html
<section class="slide">
  <h2>Problem Causes</h2>
  <ul>
    <li>Stress</li>
    <li>Lack of sleep</li>
    <li>Overload</li>
  </ul>
</section>
```

**✅ GOOD (filled, visually rich):**
```html
<section class="slide">
  <span class="badge ani">🔍 Analysis</span>
  <h2 class="ani ani-d1">Problem Causes</h2>
  <div class="cols flex-1 gap-m" style="margin-top:12px">
    <div class="flex-col gap-s">
      <div class="card card-accent ani ani-d1">
        <h3>😰 Stress</h3>
        <p>Chronic load depletes resources</p>
      </div>
      <div class="card ani ani-d2">
        <h3>😴 Lack of sleep</h3>
        <p>Less than 7 hours disrupts recovery</p>
      </div>
      <div class="card ani ani-d3">
        <h3>📈 Overload</h3>
        <p>Multitasking reduces effectiveness</p>
      </div>
    </div>
    <div class="flex-col gap-s">
      <div class="callout ani ani-d4">
        <p class="big-emoji">⚠️</p>
        <p><strong>Important:</strong> Factors are interconnected</p>
      </div>
      <div class="example-block ani ani-d5">
        <span class="example-label">Statistics</span>
        <p>67% of students experience at least 2 of 3 factors</p>
      </div>
    </div>
  </div>
</section>
```

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
    <!-- NOTE: Content below is EXAMPLE. Generate in USER'S LANGUAGE -->
    <section class="slide active title-slide">
        <div class="badge">Presentation</div>
        <h1>{TOPIC}</h1>
        <p class="subtitle">{SUBTITLE}</p>
        <p style="margin-top: 30px; opacity: 0.7; font-size: 14px;">Authors: {AUTHORS}</p>
    </section>

    <!-- SLIDE 2: TABLE OF CONTENTS -->
    <section class="slide">
        <h2>Contents</h2>
        <ul class="list">
            <li>Introduction and relevance</li>
            <li>Key concepts</li>
            <li>Main aspects</li>
            <li>Practical application</li>
            <li>Conclusions</li>
        </ul>
    </section>

    <!-- SLIDES 3-N: CONTENT -->
    <section class="slide">
        <h2>{SLIDE_TITLE}</h2>
        <div class="grid-2">
            <div class="card">
                <h3>🎯 Subheading</h3>
                <p>Brief text (2-3 lines maximum)</p>
            </div>
            <div class="card success">
                <h3>✅ Subheading</h3>
                <p>Brief text</p>
            </div>
        </div>
    </section>

    <!-- LAST SLIDE: THANK YOU -->
    <section class="slide title-slide">
        <h1>Thank you for your attention!</h1>
        <p class="subtitle">Ready for your questions</p>
        <p style="margin-top: 30px; opacity: 0.7; font-size: 14px;">{AUTHORS}</p>
    </section>

</div>

<!-- NAVIGATION -->
<div class="slide-counter"><span id="current">1</span> / <span id="total">N</span></div>
<div class="nav">
    <button id="prev" onclick="changeSlide(-1)">← Back</button>
    <button id="next" onclick="changeSlide(1)">Next →</button>
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

## 🚨 CRITICAL: ELIMINATING DEAD SPACE

### The Problem
Slides where content takes 30-50% of screen, leaving the rest empty — this is **dead space**. It looks unprofessional.

### Common Mistakes:
```html
<!-- ❌ BAD: Cards pushed to top, empty space below -->
<div class="card-grid" style="align-content: start">
  <div class="card">Item 1</div>
  <div class="card">Item 2</div>
</div>

<!-- ❌ BAD: Single card for entire slide -->
<div class="card">Just text</div>
```

### Solutions:

**1. Use `flex-1` to stretch:**
```html
<div class="cols flex-1 gap-m">
  <div class="flex-col gap-s flex-1">...</div>
  <div class="flex-col gap-s flex-1">...</div>
</div>
```

**2. DO NOT use `align-content: start` without reason:**
```css
/* ❌ Pushes to top */
.card-grid { align-content: start; }

/* ✅ Stretches evenly */
.card-grid { align-content: stretch; }
```

**3. Add supplementary elements:**
- If content is small → add `.callout` at bottom
- If list is short → add example in `.example-block`
- If single card → use `.cols` and add second column

**4. Vertical centering for minimal content:**
```html
<div class="center flex-1" style="flex-direction:column">
  <!-- Centers vertically -->
</div>
```

**5. Justify-content for distribution:**
```css
.flex-col { justify-content: space-between; } /* Or space-around */
```

### Slide Template WITHOUT dead space:

```html
<section class="slide">
  <span class="badge ani">🎯 Section</span>
  <h2 class="ani ani-d1">Slide Heading</h2>
  
  <!-- Content stretches to fill screen -->
  <div class="cols flex-1 gap-m" style="margin-top:12px">
    <div class="flex-col gap-s">
      <div class="card card-accent ani ani-d1">
        <h3>📊 Point 1</h3>
        <p>Description with concrete example</p>
      </div>
      <div class="card ani ani-d2">
        <h3>✅ Point 2</h3>
        <p>Another important aspect</p>
      </div>
    </div>
    <div class="flex-col gap-s">
      <div class="card ani ani-d3">
        <h3>Application Example</h3>
        <div class="example-block">
          Concrete example or quote
        </div>
      </div>
      <!-- Callout fills remaining space -->
      <div class="callout ani ani-d4">
        <p><strong>Important:</strong> Key takeaway</p>
      </div>
    </div>
  </div>
</section>
```

---

## CRITICAL CSS RULES (DO NOT VIOLATE!)

### 1. Font Sizes (STRICT)
```css
h1 (title slide): 44px max
h2 (slide titles): 28px
h3 (card titles): 16-18px
p, li (body text): 14-16px
```

### 2. Slide Padding (COMPACT!)
```css
.slide { padding: clamp(14px, 2.2vh, 26px) clamp(18px, 3.2vw, 48px); }  /* Adaptive */
.slide { padding: 24px 20px 60px; }  /* Mobile */
```

### 3. Cards — COMPACT
```css
.card {
    padding: 14px 16px;      /* NOT more! */
    font-size: 14px;         /* Text in cards is smaller */
}
```

### 4. Grids — with gap
```css
.grid-2 { gap: 16px; }
.grid-3 { gap: 14px; }
```

### 5. NO overflow-y: scroll on slides
Content MUST fit. If it doesn't fit — shorten text or split into 2 slides.

---

## Content Rules (MUST FOLLOW)

### Maximum content per slide:
- **Title slide:** heading + subtitle + authors
- **Content slide:** h2 + maximum 4-5 cards OR 1 paragraph + list of 5-6 items
- **Grid slide:** maximum 6 cards (2x3 or 3x2)

### Text size in cards:
- Card title: 1 line
- Card text: 2-3 lines MAXIMUM

### DO NOT:
❌ Long paragraphs (more than 3 lines)
❌ Lists more than 6 items per slide
❌ Cards with 5+ lines of text
❌ overflow-y: auto or scroll on slides
❌ font-size smaller than 14px for body text

### DO:
✅ Short bullet points (1-2 lines)
✅ Emoji in card headings for visual separation
✅ Split large content into multiple slides
✅ Use grid-2 or grid-3 for structure

---

## Example of a good slide:

```html
<section class="slide">
    <h2>Key Principles</h2>
    <div class="grid-2">
        <div class="card">
            <h3>🎯 Focus on Goals</h3>
            <p>Every action is directed toward results</p>
        </div>
        <div class="card success">
            <h3>✅ Quality Control</h3>
            <p>Regular monitoring and improvement</p>
        </div>
        <div class="card info">
            <h3>📊 Data Analysis</h3>
            <p>Decisions based on facts</p>
        </div>
        <div class="card warning">
            <h3>⚠️ Risk Management</h3>
            <p>Anticipate and prevent</p>
        </div>
    </div>
</section>
```

---

## FINAL CHECKLIST BEFORE CREATING:

1. ✅ Fonts NOT larger than specified sizes
2. ✅ Slide padding per template
3. ✅ Cards compact (14px text, 14-16px padding)
4. ✅ NO overflow-y on slides
5. ✅ Content fits on screen without scroll
6. ✅ Maximum 6 cards per slide
7. ✅ Text in cards ≤ 3 lines
