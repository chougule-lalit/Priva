# PROJECT MASTER CONTEXT: VaultFlow (FinTracker-Offline)

## 1. System Role & Behavioral Protocol
**Role:** You are the Lead Architect & Mentor for a Senior .NET Dev building a Flutter app.
**User Persona:** The user understands backend systems (threads, DBs) but needs guidance on Flutter patterns (Isolates, Riverpod).

**COMMANDMENTS (Non-Negotiable):**
1.  **Context is King:** Always check this file before generating code.
2.  **Spec-First:** Do NOT generate implementation code immediately. Generate a "Step-by-Step Plan" first.
3.  **No Hallucinations:** Use the `lib/` structure provided in the Context Dump.
4.  **UI Consistency:** Maintain the "CRED/Apple" aesthetic (Beige/Dark modes).
5.  **ZERO DILUTION (STRICT):** NEVER summarize, shorten, or remove items from the "Project Vision" or "North Star" sections. The requirements for **Offline Chat** and **Offline Analytics** are sacred and must persist in every iteration of this file.

---

## 2. Project Vision: The "Silent & Smart" Tracker
* **Core Philosophy:** "Set and Forget." The app works in the background using `telephony` and `flutter_background_service`.
* **Privacy (Ironclad):** 100% Offline. No Internet Permission. Data never leaves the device.
* **The "Hybrid" Brain (3-Tier Approach):**
    1.  **Tier 1 (Rules):** "Always categorize 'Raju Chai' as 'Food'." (100% Accuracy).
    2.  **Tier 2 (Regex):** Standard pattern extraction (High Accuracy for amounts/dates/accounts).
    3.  **Tier 3 (Offline AI):** The "Analyst" for unknown/messy SMS and Natural Language queries.

---

## 3. Technical Stack (LOCKED)
* **Framework:** Flutter (Stable)
* **Database:** `isar_community: ^3.3.0` (Local NoSQL)
* **State Management:** `flutter_riverpod: ^3.0.0`
* **Background Processing:** `flutter_background_service` (Headless Isolate) + `flutter_local_notifications`.
* **SMS Access:** `flutter_sms_inbox` (Historical) + `telephony` (Live Listener).
* **AI Runtime:** `mediapipe_genai` (Gemma 2B) OR `llama_cpp_dart` (Phi-3). *Bundled locally.*

---

## 4. CRITICAL DEVELOPMENT LAWS (The "Anti-Crash" & Security Rules)
1.  **ZERO CONNECTIVITY (STRICT):**
    * **Rule:** The app MUST NOT request `android.permission.INTERNET`.
    * **Constraint:** No API calls. AI models are side-loaded or bundled.
2.  **DATABASE WRITES:** All batch operations (>1 item) MUST use `isar.writeTxnSync()` (Synchronous).
    * *Reason:* Prevents "Ghost Listener" race conditions with Riverpod.
3.  **BACKGROUND ISOLATION:** The SMS Listener runs in a separate Isolate. It writes to DB independently.

---

## 5. Design System (Tokens)
* **Palette:** `brandRed` (Expense), `brandDark` (Dark BG), `brandBeige` (Light BG), `brandWhite` (Cards).
* **Components:** Stadium Borders, Rounded Rects (Cards 24px-32px), Google Fonts Poppins.

---

## 6. The "Hybrid Engine" Architecture

### Feature A: The "Account Discovery" Engine (Axio-Style)
* **Goal:** Auto-create `Account` entities from historical SMS.
* **Logic:**
    1.  Scan Inbox for unique `SenderID` + `Last4Digits` pairs (e.g., "HDFCBK" + "1234").
    2.  Present list to user: "Found HDFC Account ending 1234. Add it?"
    3.  **Credit Card Smarts:** Parse "Statement Generated" SMS to extract:
        * `Total Credit Limit`
        * `Statement Date`
        * `Payment Due Date`
* **Balance Reconciliation:**
    * *Trigger:* SMS contains "Avl Lmt" or "Available Limit".
    * *Math:* `Current Outstanding` = `Total Limit` - `Available Limit`.

### Feature B: The "Chai Wala" Problem (Human-in-the-Loop)
* **Scenario:** New Merchant "Raju Chai". No Rule. Regex finds amount/date.
* **State:** Saved as `Category: Uncategorized`.
* **Notification:** "New Uncategorized Transaction Detected."

### Feature C: The "Pending" UI & Retroactive Sync
1.  **Screen:** A "Pending / Uncategorized" list view.
2.  **Action:** User selects "Raju Chai" -> Assigns "Food".
3.  **Trigger:** App creates a `CategoryRule` (Pattern: "Raju Chai" = Food).
4.  **The Job:** App immediately queries **ALL** past `Uncategorized` transactions containing "Raju Chai" and updates them.

---

## 7. Project Roadmap & Status

### Phase 1: Core Foundation (✅ COMPLETED)
* [x] Project Setup, Riverpod, Isar DB.
* [x] Basic Regex Parsing.
* [x] UI Polish.

### Phase 2: The "Silent Listener" & Rules Engine (🚧 CURRENT FOCUS)
* [ ] **Account Model 2.0:** Add `senderId`, `creditLimit`, `statementDay` to Account schema.
* [ ] **Account Discovery Service:** Build the "Scan & Link" engine for historical SMS.
* [ ] **Rules Model:** Create `CategoryRule` collection in Isar (Pattern -> Category ID).
* [ ] **Background Service:** Implement Headless SMS listener (No Sync Button).
* [ ] **Pending UI:** Build the "Inbox" for uncategorized transactions.
* [ ] **Retroactive Sync:** Logic to apply new rules to old data.

### Phase 3: Advanced Account Management (⏳ PENDING)
* [ ] **Credit Cards:** Handle Billing Cycles, Due Dates, and "Outstanding" vs "Spent".
* [ ] **Account Linking:** Smartly link SMS to specific Accounts based on "ending in 1234".
* [ ] **Smart Reconciliation:** Auto-correct balance using "Available Limit" SMS.

### Phase 4: The North Star (🔮 FUTURE - SACRED REQ)
* **Constraint:** All features below MUST run **100% OFFLINE** on-device.
* [ ] **Smart Categorization:** LLM cleans "UPI-PAYTM-UBER..." to "Uber" and suggests category.
* [ ] **Finance Chat (Local RAG):**
    * *User:* "How much did I spend on fuel this month?"
    * *System:* LLM converts Natural Language -> Isar Query -> Returns Sum.
* [ ] **Proactive Analytics:**
    * *System:* Runs background stats job.
    * *Insight:* "Your electricity bill is ₹500 higher than your 6-month average."

---

## 9. Google Play Compliance Strategy (LOCKED)
**Why:** To ensure approval for the sensitive `READ_SMS` permission.

### A. The "Gatekeeper" Strategy
* **Exception Category:** Apply as **"SMS-based money management"**.
* **Requirement:** The app must be deemed "useless" without SMS.
* **Implementation:** Onboarding screens must emphasize "SMS Automation" as the primary feature, not manual entry.

### B. Handling "Account Discovery" (Historical Scan)
* **Protocol:** The historical scan must be **User-Initiated**.
* **Forbidden:** Do NOT run `flutter_sms_inbox` query automatically on app launch.
* **Allowed:** Show a prominent button: *"Scan past messages to find accounts?"*. Only run the query after the user taps this.

### C. The "Video Evidence" Requirement
* **Deliverable:** A screen recording for the Google Review team.
* **Script:**
    1.  Show App Empty State.
    2.  Tap "Sync SMS" / "Scan Accounts".
    3.  Show System Permission Dialog -> Click "Allow".
    4.  Show Accounts/Transactions populating immediately.
    5.  *Proof that permission is tied directly to user benefit.*