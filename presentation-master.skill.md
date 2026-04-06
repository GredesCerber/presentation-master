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

**Rule: 3-5 slides per creator (guideline, not strict)**

| Authors | Min Slides | Target | Max Slides |
|---------|-----------|--------|-----------|
| 1 | 10 | 12-14 | 16 |
| 2 | 10 | 14-16 | 18 |
| 3 | 12 | 16-18 | 20 |
| 4+ | 14 | 18-20 | 22 |

**Why this matters:**
- Too few slides = rushed, feels incomplete
- Too many slides = audience loses focus
- Sweet spot = 14-20 slides for group presentation

**Application:**
- 1 author + complex topic → 14-16 slides
- 2 authors + medium topic → 15-18 slides
- 3+ authors + well-scoped topic → 16-20 slides

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

### Color Palettes (Pick ONE)

**Palette A: Academic (Green/Teal)**
- Primary: #2f8f6a (green)
- Secondary: #0ea5e9 (teal/cyan)
- Accent: #f0fdf4 (very light green background)
- Dark text: #0f172a

**Palette B: Modern (Purple/Blue)**
- Primary: #8b5cf6 (purple)
- Secondary: #3b82f6 (bright blue)
- Accent: #f5f3ff (very light purple background)
- Dark text: #0f172a

**Palette C: Professional (Navy/Gold)**
- Primary: #0f172a (navy)
- Secondary: #fbbf24 (gold/amber)
- Accent: #fffbeb (very light yellow background)
- Dark text: #0f172a

### Typography Rules
- Fonts: Segoe UI, Inter, or system sans-serif (NEVER serif or cursive)
- Font size: Use `clamp()` for all sizes
  - Heading 1: `clamp(2em, 4vw, 3.5em)`
  - Heading 2: `clamp(1.5em, 2.5vw, 2.2em)`
  - Body text: `clamp(0.9em, 1.1vw, 1.1em)`
  - Small text: `clamp(0.75em, 0.9vw, 0.9em)`
- Line height: 1.5 for headings, 1.6 for body
- Letter spacing: normal (0)

### Component Styles
- Card boxes: left border accent (4-6px, primary color)
- Borders: subtle shadows only (0 4px 8px rgba(0,0,0,0.08))
- Corners: 8-12px border-radius
- Spacing: `gap: clamp(12px, 2vw, 24px)` between elements
- Transitions: smooth 0.3s for hover states

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

**Presentation file:** `{Тема}.html`
- Examples: `Критическое_мышление.html`, `Машинное_обучение.html`
- Use underscores for spaces
- Keep name 2-4 words max
- Use original language (Russian = Russian letters)

**Speaker notes file:** `Речь_{Тема}.html`
- Examples: `Речь_Критическое_мышление.html`
- Use EXACT same topic name as presentation file
- Prefix is consistent: `Речь_`

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

❌ **Content mistakes:**
- Generate < 14 slides total (feels rushed)
- Generate > 22 slides total (too long, loses focus)
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
- Target slides: 14-16 (3-5 × 2 authors)

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

1. **Extract & calculate:** Topic, author count, target slide count
2. **Plan structure:** Title → Overview → Content (14-20 slides) → Summary → Thank You
3. **Fill content:** Mix 6 slide types, use natural topic transitions (NOT author labels)
4. **Fact-check:** Verify accuracy, logic, consistency, no placeholders
5. **Generate 2 files:**
   - Interactive presentation HTML (navigation, responsive)
   - Speaker notes HTML (2-5 para/slide, conversational)
6. **Verify quality:** Run checklists (file structure, content, responsiveness, facts)
7. **Confirm complete:** Both files ready, no editing needed, presenter can use immediately

**NO questions, NO partial work, NO external dependencies.**

**Output: 2 ready-to-use HTML files in user's directory.**
