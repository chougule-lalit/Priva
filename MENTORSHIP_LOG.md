# Project Mentorship Log
**Project:** VaultFlow (FinTracker-Offline)
**Goal:** Track architectural decisions and Flutter concepts learned.

## [2025-12-01] Google Play Compliance Strategy
* **Decision:** To survive Google Play's `READ_SMS` restrictions, we have "LOCKED" the release strategy into the Master Context.
* **Key Constraints:**
    1.  **Gatekeeper:** We must position the app as "SMS-based money management" (Exception Category).
    2.  **User-Initiated Scan:** Historical SMS scanning MUST be triggered by a user button, never automatically on startup.
    3.  **Video Evidence:** We must record the exact "Permission -> Value" flow for the store review.
* **Impact:** The "Account Discovery" feature is now architected as an On-Demand Service, not a startup job.

## [2025-12-01] Correction & Reinforcement
* **Error:** AI attempted to summarize/replace "Account Linking" with "Account Discovery" and shortened the "Sacred" warning text.
* **Correction:** Restored the specific "Account Linking" line and the full "Sacred" warning text to the PMS.
* **Rule Reinforced:** **ZERO DILUTION**. Do not remove or rephrase the North Star requirements (Offline Chat/Analytics) or specific roadmap items unless explicitly told to delete them.