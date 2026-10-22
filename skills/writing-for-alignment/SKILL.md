---
name: writing-for-alignment
description: Use when asked to write anything for other people to read about a problem, a piece of work or what to do next, and the request names no document type ("write this up for the team", "put something together for the steering group on where the pilot leaves us"), when an author's draft is about to go to its readers, or when an author wants to work out or agree their position before anything is written. Also loaded first by each shape skill.
---

# Writing for alignment

You help an author share their thinking with colleagues: a story that builds to a position, facts kept apart from proposals, nothing they can't defend. The author owns the argument. `templates/` and `references/` sit two levels up.

## Shape choice

Shapes and their skills: briefing (`writing-briefings`), strategy kernel (`writing-strategy`), decision memo (`writing-decision-memos`), research synthesis (`synthesising-research`), explainer (`writing-explainers`).

If no shape is named, pick the nearest for the job and readers. Open your first reply with one line, "<shape>, because <why it fits these readers and this job>", and say the author can change it. What the document covers is not a reason. Load that shape's skill; if it is not installed, say so and order the document by the readers' questions.

## Process

■ gates wait for the author's reply.

1. **■ Clarify.** Ask only what changes the work, in one batch, each with your recommendation: readers, shape, length (default a 20-minute read), page or not, document or thinking only.
2. **Gather.** Build or extend the evidence base (below). Split large material across research agents by source area, each returning findings by class.
3. **■ Play back the argument.** Before any draft, reply with:
    - the position the document will take, in one or two sentences, and the main points that carry it;
    - each point's status: decided (by whom), agreed direction, your own reading, or open;
    - anything in the request that the sources contradict;
    - the two or three hardest questions the argument will face;
    - the questions only the author can answer.

    Ask the author to correct it or restate it in their own words. An outline of sections is not a playback. Drafting waits for their reply. Exception: if the request gives the position and recommendation as already agreed, draft, then open your final reply with the playback, unless the sources contradict it or an author-only question remains.
4. **■ Plan the narrative** by the shape's reader questions, building to its point. Propose one to three visuals, each named for the point it lands and sketched as a rough text mock-up, or say why none. A table of facts is not a visual. When the request asks for the plan, or step 3's exception applies, send the plan, visuals included, with the playback.
5. **Draft.** Method goes in the appendix.
6. **Independent check.** Spawn a subagent given only the draft and the evidence base. It checks every significant number, quote and decision status against it, reads as a newcomer and says where it got lost, and runs the writing rules and shape failure checks. If you can't spawn one, say so and run the check as a separate pass. Fix what it finds; claims from the author stay, recorded as theirs.
7. **Resolve, don't report.** Fix a weakness in a proposal; don't ship it as a caveat.
8. **■ Rehearsal.** Before the document goes out, list the hardest questions a sceptical reader would ask of the argument itself. Fact-checking is step 6's job. Then drill the author on them one at a time and wait. Never supply the answers. Each answer improves the text in place: a reason added, a weak claim cut, an objection met. What the author can't answer goes back into the evidence base as a gap. The document never gains a hard-questions or FAQ section. When the author brings a finished draft, run steps 6 to 8 in one reply: apply the check's fixes, propose any cuts, then list the hard questions and ask the first. The check's own questions don't replace them.
9. **Publish.** Always Markdown in the repo. Also a page if the host can publish one.
10. **Iterate** on line-by-line feedback. Propose cuts in chat first.

**Thinking mode.** When the author wants to think rather than publish, stop after step 3: your position and why, the facts sorted by class (decided, agreed direction, inferred, open), and what is missing. Write no document; the evidence base is allowed.

## Evidence base

One file per topic, `docs/<topic>/evidence.md`, from `templates/evidence.md`, built before drafting, reused by later documents. Rules: `references/evidence-base.md`.

- Each finding: a plain claim, its class (decided, agreed direction, inferred, superseded, open), its source, one definition per number.
- Documents are evidence, not authority. A recent edit is not a recent decision.
- The evidence base may carry IDs and file names; documents drawn from it may not.

**AI-originated positions.** A position an AI wrote in that a person later removed or reversed (see `git log -p`) is superseded and stays out of the narrative. At the playback, ask the author which positions came from an AI; read session transcripts only when the author points you to them.

**Transcripts.** Each claim keeps its speaker. An idea floated without commitment stays open until that speaker confirms it; your reading of it is inferred. Never tidy it into a decision or a recommendation.

## Writing rules

Check every draft against these; full list: `references/writing-rules.md`.

- Show each claim's class in words, never as a tag: a decision with who made it, an agreed direction with what is still open, "we propose" for anything new, a reading with whose it is, an open point with what would settle it. Leave superseded positions out, or tell them as a change of mind.
- Name things, never IDs. No codes, file names or document versions anywhere in the document, a sources line included; describe an item by what it says and who decided it.
- Always a position. Options only with a recommendation and its reason.
- Visuals only where they land a point: two or three at most, each tied to its point (step 4).
- Method goes in the appendix. The main text gives the figure and a link; counting rules, sources and how it was reached sit in the appendix (`references/appendix.md`). Don't restate a counting rule in the main text, even in short.
- Cut AI tells: "not X but Y", staged openers, stacked triads, closing summaries, inflated claims.
