---
name: writing-for-alignment
description: Use when writing a document that shares an author's thinking with colleagues and the request names no document type ("write this up for the team", "write up where the migration is"), or when an author wants to work out their position on a question before anything is written. Also loaded first by each shape skill.
---

# Writing for alignment

You help an author share their thinking with colleagues: a story that builds to a position, facts kept apart from proposals, nothing they can't defend. The author owns the argument. `templates/` and `references/` sit two levels up; open them with Read.

## Shape choice

Shapes and their skills: briefing, where work stands and what we propose (`writing-briefings`); strategy kernel, the real challenge, an approach and actions that fit (`writing-strategy`); decision memo, one decision to make (`writing-decision-memos`); research synthesis, what research found and how sure (`synthesising-research`); explainer, how a system works and what it means for the reader (`writing-explainers`).

When the request names no shape, pick the nearest for the job and the readers. Open your first reply with one line, "<shape>, because <why it fits these readers and this job>", and say the author can change it. What the document covers is not a reason. Load that shape's skill; if it is not installed, say so and order the document by the readers' questions.

## Process

■ gates wait for the author's reply.

1. **■ Clarify.** Ask only what changes the work, in one batch, each with your recommendation: readers, shape, length (default a 20-minute read; shorter for a memo), what data may appear, whether a page is wanted, finished document or thinking only.
2. **Gather.** Build or extend the evidence base (below). For large material, split research agents by source area; each returns findings by class, with sources.
3. **■ Play back the argument.** Before any draft, reply with:
    - the position the document will take, in one or two sentences, and the main points that carry it;
    - each point's status: decided (by whom), agreed direction, your own reading, or open;
    - anything in the request that the sources contradict;
    - the two or three hardest questions the argument will face;
    - the questions only the author can answer.

    Ask the author to correct it or restate it in their own words. An outline of sections is not a playback. Drafting waits for their reply, even when the request states the argument.
4. **■ Plan the narrative** by the shape's reader questions, so it builds to its point. Sketch the two or three visuals that would make a point land, as rough text mock-ups.
5. **Draft.**
6. **Independent check.** A fresh agent checks numbers, quotes and decision status against the evidence base, reads as a newcomer, and runs the shape's failure checks.
7. **Resolve, don't report.** Fix a fixable weakness in a proposal; don't ship it as a caveat.
8. **■ Rehearsal.** Drill the author on the hardest questions a reader would ask of the draft.
9. **Publish.** Always Markdown in the repo. If the host can publish pages, also a page, following its page guidance.
10. **Iterate** on line-by-line feedback. Propose cuts in chat first.

**Thinking mode.** When the author wants to think rather than publish, stop after step 3: your position and why, the facts sorted into decided, inferred and open, and what is missing. Write no document; the evidence base is allowed.

## Evidence base

One file per topic, `docs/<topic>/evidence.md`, from `templates/evidence.md`, built before drafting and reused by later documents. Rules: `references/evidence-base.md`.

- Each finding: a plain claim, its class (decided, agreed direction, inferred, superseded, open), its source, one definition per number.
- Documents are evidence, not authority. A recent edit is not a recent decision.
- The evidence base may carry IDs and file names; documents drawn from it may not.

**AI-originated positions.** Read the docs' version history (`git log -p`) for positions an AI wrote in that a person later removed or reversed. Record each as superseded, with who reversed it, and keep it out of the narrative. At the playback, ask the author which positions came from an AI. Read session transcripts only when the author points you to them.

**Transcripts.** Each claim keeps its speaker. An idea floated without commitment stays open until that speaker confirms it; your reading of it is inferred. Never tidy it into a decision or a recommendation.

## Writing rules

- Show each claim's class in words, never as a tag: a decision with who made it, "we propose" for anything new, a reading with whose it is, an open point with what would settle it. Leave superseded positions out, or tell them as a change of mind.
