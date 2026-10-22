# Writing for alignment, release 1: GREEN record (2026-10-22)

Sonnet 5.5 (5 runs per arm) and Opus 5.5 (3 runs per arm), on the subscription. Judge Opus for t3, t4, t10 and t12; judge Sonnet for the rest. Final text: `0d4cd59`. RED is in `2026-10-22-writing-for-alignment-red.md`.

The without arm can't pass a skill-fired grader, so a case with one has a without ceiling of (n−1)/n.

## Changes between GREEN rounds

1. **`133693a` to `4911c22`:** the core skill: process, gates, evidence base, writing rules, independent check, rehearsal, appendix (Tasks 2–3 and three fix rounds).
2. **`1ebf825`:** `writing-briefings` (t1, t13).
3. **`628932f`:** `writing-strategy` (t11, t12).
4. **`daa2e32`:** deferred review fixes. Both shape skills load the core skill "unless it is already loaded" and use their template as the step 4 outline. The strategy checks are relabelled as Rumelt's signs plus two kernel checks. The diagnosis comes "from the author or the sources, never from you".
5. **`0d4cd59`:** the core description fires on any writing for other people that names no document type. At `daa2e32`, t8 scored 0.20 (5 runs): the core skill fired in 1 of 5 runs, and the other 4 called no skill. At `0d4cd59` it scored 1.00 (3 runs, then 5).

## Scores on the final text (`0d4cd59`)

| Case | With (Sonnet, 5) | Without (Sonnet, 5) | Failing (with, Sonnet) | Opus with / without (3) | Label |
|---|---|---|---|---|---|
| t1-playback-gate | 1.00 | 0.60 | — | 0.93 / 0.60 | GREEN |
| t1b-playback-preset | 1.00 | 1.00 | — | 1.00 / 1.00 | GUARD |
| t2-machine-refs | 1.00 | 0.40 | — | 1.00 / 0.67 | GREEN |
| t3-transcript-fidelity | 1.00 | 1.00 | — | 1.00 / 1.00 | GUARD |
| t4-ai-position | 1.00 | 0.40 | — | 1.00 / 1.00 | GUARD-unconfirmed |
| t5-rehearsal | 0.93 | 0.53 | asks-hard 4/5 | 1.00 / 0.56 | GREEN |
| t6-visual-restraint | 1.00 | 0.80 | — | 1.00 / 0.75 | GREEN |
| t7-thinking-mode | 0.95 | 1.00 | thinks 4/5 | 0.92 / 0.92 | GUARD |
| t8-shape-choice | 1.00 | 0.10 | — | 1.00 / 0.33 | GREEN |
| t9-plain-english | 1.00 | 1.00 | — | 1.00 / 1.00 | GUARD |
| t10-appendix | 1.00 | 0.00 | — | **0.67** / 0.00 | GREEN on Sonnet |
| t11-strategy-no-diagnosis | 1.00 | 0.72 | — | 1.00 / 0.80 | GREEN (skill-fired); GUARD on behaviour |
| t12-strategy-kernel | 0.93 | 0.33 | coherent 4/5 | 1.00 / 0.44 | GREEN |
| t13-briefing-shape | 1.00 | 0.16 | — | 1.00 / 0.33 | GREEN |

Notes on the table:

- **t4:** every run that wrote the briefing passed sms-not-plan, in both arms and on both models: 5/5 with and 2/2 without on Sonnet, 3/3 each arm on Opus. The three Sonnet without misses wrote no `docs/briefing.md`, so the grader threw. No API refusals this time. It stays GUARD-unconfirmed: the unaided agent passes whenever it writes the file, and only four without-arm runs on Sonnet were judged, across RED and GREEN.
- **t10 on Opus, 0.67:** two runs drafted, and both passed method-in-appendix. The third run stopped before drafting. It played the argument back and asked Sam one question: the proposed Saturday phone call isn't in Priya's recorded email-only decision. Step 3's exception allows that stop, since a source raises a question only the author can answer. The grader threw on the missing file.
- **t1 on Opus, 0.93:** one run failed no-draft-shell. It wrote a git object to a temporary `.md` file in order to diff an old `docs/spec.md`, a workaround for the blocked `git log`. That is a false positive: no draft was written.
- **t6:** the without arm reached 0.80 on Sonnet this time (visuals 1/5). The with arm, at 1.00, beats it.
- **t7:** GUARD since RED (0.92 / 0.92). The with arm misses one run (thinks 4/5); the without arm passes 5/5 on this batch.

## Other batches in this round

| Case | Text | Runs | With | Without | Note |
|---|---|---|---|---|---|
| t8 | `daa2e32` | 5 | 0.20 | 0.10 | core fired 1/5; led to `0d4cd59` |
| t11 | `daa2e32` | 5 | 1.00 | 0.76 | |
| t13 | `daa2e32` → `0d4cd59` | 5 | 0.96 | 0.24 | the description changed during the batch; mixed text |
| t8 | `0d4cd59` | 3 | 1.00 | 0.17 | core fired 3/3 |
| t11 | `0d4cd59` | 3 | 1.00 | 0.67 | |
| t13 | `0d4cd59` | 3 | 0.93 | 0.20 | position 2/3 |

## Not re-run after the last text change

None. Every case ran at `0d4cd59`: 5 runs on Sonnet and 3 on Opus, both arms.

## Untested spec lines (kept)

- Page publishing (step 9): the cases ask for Markdown only.
- The methods scripts and the independent re-count of headline numbers (step 9).
- The interview guide for people the skill can't reach.
- The live interview of the author, one question at a time: the harness can't answer.
- Tone towards maintainers.
- Iteration on line-by-line feedback (step 10), and proposing cuts in chat before they go in.
- Rehearsal: whether answers improve the text and gaps go back to the evidence base. Only the asking is tested (t5).
- The agreed-argument playback position (step 3 exception). The judge sees only the final message, so it can't tell whether the playback came before the draft.
- The version-history half of AI-originated positions. The eval sandbox blocks `git log`; runs fall back to asking the author, and one Opus run read git objects directly.
- The independent check's subagent. A drafting run spawned the Agent tool in 11 of 35 with-arm runs (Sonnet, final text). Elsewhere the check ran as a separate pass or not at all.
- "Tables styled as distinct cards": left to the host's page guidance and not in the skill.
- t10: whether main-text claims link to their appendix section. Not graded; the grader checks only that method is out of the main text.
- Shape skills: the "When it fits" redirects, the briefing's "What are we less sure of?" and "what it does not solve", the chronology check, the strategy fluff check, "actions reinforce each other", first moves with a lead, and both templates' contents.
- Appendix placement by size (companion page).
- A review of whether an existing strategy is good or bad: no case covers it.

## Cost (API-equivalent, on the subscription)

About $69 for this round: Sonnet $31 (including the t8 description check), Opus $38.
