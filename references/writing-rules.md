# Writing rules

The full list behind the check in the skill body. Each rule serves a reader who comes to the document with fresh eyes and wants to know what the author thinks and how sure they are.

## Narrative and position

- **Open with why it matters:** the problem in concrete, measured terms. "Two in five orders ship late, and late orders make up most refund requests", not "Delivery performance has room for improvement."
- **Organise by what each stage taught us,** not strict chronology. A section called "What the first trial showed" beats "March", "April", "May".
- **Always take a position.** Options appear only with a recommendation and the reason. Ask readers for alignment ("what do you agree and disagree with"), not approval.
- **Proposals** open by saying they are proposed and not agreed, state the aims every change must serve, tie each change to a problem found earlier, and say what they do not solve.
- **"What we need to agree"** holds a few broad themes, not long lists of low-level questions for named people.

## Plain and human-readable

- Plain words, active voice, one idea per sentence. Use the project's spelling, British or American.
- **Name things; never cite internal IDs, codes, file names or document versions,** in the text, in headings or in a sources line. When the reader must know which item you mean, describe it by what it says and who made it: "The finance lead decided in May that refunds go back to the original card", not "per decision R7" or "see refunds-v2". The evidence base keeps the IDs; the reader never needs them.
- Define every term at first use, in a plain phrase. Use the domain's own terms. A counting rule is method: it goes in the appendix, not the main text.
- **Each number has one definition,** used consistently. Give the typical per-person or per-item figure as well as the total: "38 hours of overtime a month, about two hours per driver".
- Prose for reasoning, bullets for lists the reader will scan. Items compared on two or more attributes (status per item, options by cost and effect) go in a table. List items are full sentences: capital first, no trailing semicolon. Leave a blank line before every list and table, and check the page: each renders as a list or table, with no `- ` left inside a paragraph.
- **Cut AI tells:**
    - "not X but Y" contrasts, where a claim is set against one nobody made;
    - staged openers ("Here's the thing:", "The short answer?");
    - stacked triads (three adjectives, three parallel clauses) used for rhythm, not meaning;
    - a summary paragraph at the end that repeats the body;
    - inflated claims ("transformative", "game-changing").

## Honest and fair

- **Classify every claim visibly, in words:** a decision with who made it, an agreed direction with what is still open in it, "we propose" for anything new, a reading with whose it is, an open point with what would settle it. Never imply consensus or disguise uncertainty.
- Name who did what. Never a vague "we" for one person's work.
- Don't attribute preferences people haven't stated. Describe the current state and what a change would need.
- Credit why the current design exists, and take care with tone towards the people who built and keep it running. Explain why a design choice causes a problem rather than only stating that it does.
- Phrase limits of the data so they don't read as criticism of a person: "The log doesn't record who approved a change", not "Approvers didn't record their changes."
- Don't suggest hiding information from professionals.
- Before stating what would change a recommendation, check the sources; the answer may already be known.
- Cite external research and published guidance, linked. Never cite the author's own working documents as authority.

## Explaining

- Explain any method readers won't know, with a short analogy.
- An analogy carries its reason, and the nearest example from the reader's own field with its evidence.
- **Method goes in the appendix.** Counting rules, sources, sample sizes and how a figure was reached sit in an appendix at the end. The main text gives the figure and points to the appendix section that backs it. See `appendix.md`.

## Visuals

- **Only where a visual makes a point land:** a comparison the reader would otherwise hold in their head, a flow that prose turns into a list of steps, a before-and-after.
- **One to three at most** in a document. No diagram or worked example for every concept.
- **Each visual is tied to one named point** in the narrative: "The bar chart of late orders by depot carries the point that one depot drives most of the problem."
- **Sketch each one for approval** at the planning step, as a rough text mock-up, before any is drawn:

```
Late orders by depot, last quarter
North   ████████████████  41%
East    █████              12%
South   ████               10%
```

- If a point needs no visual, say so; an empty visual list is a valid plan.
