# The evidence base

One file per topic, for example `docs/<topic>/evidence.md`, or the project's own docs folder if it has one. Build it before any drafting. Every later document on the same topic draws on it, so a decision memo spun off an earlier document reuses checked material and can't contradict it. Start from `templates/evidence.md`.

The evidence base is the author's working file. It may carry IDs, file names and document versions. The documents drawn from it may not.

## What each finding records

- **The claim**, in one plain sentence.
- **Its class** (below).
- **Its source:** a document, a code location, a transcript and its speaker, "the author, in conversation (date)", or a named person via the author.
- **For numbers:** one definition, used the same way everywhere. Give the typical per-person or per-item figure beside any total.

## The classes

| Class | Record |
|---|---|
| Decided | Who decided, when, and the evidence that they did |
| Agreed direction | What is agreed and what is still open within it |
| Inferred | Whose reading it is (the AI's, or a named person's) and what it rests on |
| Superseded | What replaced it, who changed it, and when |
| Open | What would settle it, and who could |

## The sources

**Documents** are evidence, not authority. A recently edited document is not a recent decision. Use the version history to see how positions changed, and who changed them.

**Code** shows behaviour, not intent. Why something was built a certain way is inferred until a person confirms it. Code that looks dead or unused is inferred as unused until someone confirms it.

**Transcripts.** Each claim keeps its speaker. Hold to what was said, not a tidier version of it. Your reading of what someone meant is inferred. An idea floated without commitment ("maybe we could …", "I sometimes think …") is open until that speaker confirms it. Never promote it to a decision, a plan or a recommendation.

**The author.** When gaps remain, interview the author one question at a time and record each answer with the source "the author, in conversation (date)". An expert with nothing written down can start here. Claims from the author stay in the document even where no other source records them; the evidence base says where they came from.

**People you can't reach.** Write an interview guide for the author to take to them, aimed at the gaps the other sources leave: one line on what you already know, then the questions, most important first. Notes or transcripts from those conversations come back in as sources.

## AI-originated positions

An AI working on a project can push a position that people later reverse. If it leaks back into a document, the document contradicts the team.

- Read the version history of the project's docs (for example `git log -p -- docs/`). Look for text an AI author added that a person later removed or reversed.
- Record each such position as superseded: what it said, who reversed it, when, and what replaced it.
- Keep it out of the narrative. Mention it only when the change of mind is part of the story, and then as a change of mind ("We first considered X; Y showed …").
- At the playback, ask the author which positions came from an AI.
- Read session transcripts or logs only when the author points you to them. Never assume access to the host's session history.

## How classes show in the document

In words, never as tags or a tag key.

| Class | In the document |
|---|---|
| Decided | Stated as fact, with who decided: "The operations lead decided in March to …" |
| Agreed direction | Stated as the direction, not a decision: "We have agreed to aim for …; the details are open." |
| Inferred | Marked as a reading, with whose: "Our reading of the code is …", "The team lead thinks …" |
| Proposed (new in this document) | "We propose …" |
| Superseded | Left out, or told as a change of mind when the change is part of the story: "We first thought X; Y showed …" |
| Open | Stated as open, with what would settle it |

## Checks before the playback

- Every claim the argument rests on has a class and a source.
- Every "decided" names who decided and when.
- No floated idea from a transcript is classed decided or agreed.
- No superseded position appears in the argument as current.
- Each number has one definition.
- Where the author's request states something the sources contradict, it is listed for the playback.
