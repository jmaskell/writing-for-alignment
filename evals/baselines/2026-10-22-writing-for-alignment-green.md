# Writing for alignment, release 1: GREEN record (2026-10-22)

Sonnet 5.5 (5 runs per arm) and Opus 5.5 (3 runs per arm), on the subscription. Judge Opus for t3, t4, t10 and t12; judge Sonnet for the rest. Main table text: `0d4cd59`; the final review wave re-ran t8, t13 and t11 (see "Other batches"). RED is in `2026-10-22-writing-for-alignment-red.md`.

The without arm can't pass a skill-fired grader, so a case with one has a without ceiling of (n−1)/n. t13 has two skill-fired graders (`writing-briefings` and the core `writing-for-alignment`), so its without ceiling is (n−2)/n: 3/5, 0.60.

## Changes between GREEN rounds

1. **`133693a` to `4911c22`:** the core skill: process, gates, evidence base, writing rules, independent check, rehearsal, appendix (Tasks 2–3 and three fix rounds).
2. **`1ebf825`:** `writing-briefings` (t1, t13).
3. **`628932f`:** `writing-strategy` (t11, t12).
4. **`daa2e32`:** deferred review fixes. Both shape skills load the core skill "unless it is already loaded" and use their template as the step 4 outline. The strategy checks are relabelled as Rumelt's signs plus two kernel checks. The diagnosis comes "from the author or the sources, never from you".
5. **`0d4cd59`:** the core description fires on any writing for other people that names no document type. At `daa2e32`, t8 scored 0.20 (5 runs): the core skill fired in 1 of 5 runs, and the other 4 called no skill. At `0d4cd59` it scored 1.00 (3 runs, then 5).

6. **Final review wave** (commit "fix: final review wave (install, data question, shape pick, records)", after `225510f`): the core picks only the installed shapes (briefing, strategy) and says in one line when a decision memo, research synthesis or explainer would fit better and comes in release 2; its description now fires on requests that name a release 2 type, and excludes slide decks, marketing and legal copy; step 1 asks what data may appear; the visual count reads "one to three" throughout; the strategy description drops "asks whether a strategy is good or bad". t8, t13 and t11 re-run on this text (below).

## Scores on the final text (`0d4cd59`)

This table is the full 5-run Sonnet pass, run after the 3-run check of the new description (listed under "Other batches"). The two differ, for example t8 without 0.10 here and 0.17 in the 3-run check.

Labels: GREEN means the with arm scores 0.8 or more and beats the without arm. GUARD means the without arm also passes 0.8, so the case is not RED evidence. "GREEN (skill-fired); GUARD on behaviour" (t11) means the with arm beats the without arm only because of the skill-fired grader; on its behaviour graders alone, the without arm also passes.

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
- **t1 on Opus, 0.93 (at `0d4cd59`; 1.00 at 6d03190, see the pre-merge table):** one run failed no-draft-shell. It wrote a git object to a temporary `.md` file in order to diff an old `docs/spec.md`, a workaround for the blocked `git log`. That is a false positive: no draft was written.
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
| t8 | final review wave | 5 | 0.90 | 0.20 | core fired 4/5; the fifth run called no skill but still named the shape and why |
| t13 | final review wave | 3 | 1.00 | 0.20 | briefing and core fired 3/3; without ceiling 0.60 |
| t11 | final review wave | 3 | 1.00 | 0.80 | strategy fired 3/3; without arm passes every behaviour grader (GUARD on behaviour) |

## Pre-merge re-run at 6d03190

Judge Sonnet, subscription, `--scaffold --allow-tools Bash Write Edit`, both arms. JSON in `evals/results/premerge/` (gitignored). The t1 without arm failed skill-fired and states-position in every run (0.60); the t8 without arm passed names-shape in 1 of 3 runs.

| Case | Model, runs | With | Without | With-arm graders (pass counts) | Failing runs |
|---|---|---|---|---|---|
| t1-playback-gate | Sonnet, 5 | 1.00 | 0.60 | no-draft-edit 5/5, no-draft-shell 5/5, no-draft 5/5, skill-fired-writing-briefings 5/5, states-position 5/5 | none |
| t6-visual-restraint | Sonnet, 5 | 1.00 | 0.75 | no-draft-edit 5/5, no-draft-shell 5/5, no-draft 5/5, visuals 5/5 | none |
| t8-shape-choice | Opus, 3 | 1.00 | 0.17 | names-shape 3/3, skill-fired-writing-for-alignment 3/3 | none |
| t1-playback-gate | Opus, 3 | 1.00 | 0.60 | no-draft-edit 3/3, no-draft-shell 3/3, no-draft 3/3, skill-fired-writing-briefings 3/3, states-position 3/3 | none |
| t6-visual-restraint | Opus, 3 | 1.00 | 0.75 | no-draft-edit 3/3, no-draft-shell 3/3, no-draft 3/3, visuals 3/3 | none |

Data-question stop: none observed. states-position passes in all 8 t1 with-arm runs (the playback was given) and visuals passes in all 8 t6 runs (the plan was given). The traces were not kept, so this is read from the grader verdicts, not from the replies. The earlier Opus t1 false positive (no-draft-shell, git object written to a temp file) did not recur.

## Not re-run after the last text change

The final review wave changed the core body (shape pick, step 1 data question, small trims), the core and strategy descriptions, and the visual count in `references/writing-rules.md`. Re-run on it: t8, t13 and t11 (Sonnet, table above), then t1 and t6 (Sonnet) and t8, t1 and t6 (Opus) at 6d03190 (table above). Not re-run on that text: t1b, t2, t3, t4, t5, t7, t9, t10, t12 on Sonnet; t1b, t2, t3, t4, t5, t7, t9, t10, t11, t12, t13 on Opus. Their scores in the main table come from `0d4cd59`; the Opus column for t10 (0.67) is unchanged.

## Untested spec lines (kept)

### (a) Untested, text present

- Page publishing (step 9): the cases ask for Markdown only.
- What data may appear (step 1's clarify list): aggregates or paraphrased cases, no personal detail. Added in the final review wave; no case asks.
- The release 2 redirect at the shape pick: when a decision memo, research synthesis or explainer would fit better, the core says so in one line and uses the nearer installed shape. t8 checks the pick, not this line.
- The interview guide for people the skill can't reach (`references/evidence-base.md`).
- The live interview of the author, one question at a time (`references/evidence-base.md`): the harness can't answer.
- Iteration on line-by-line feedback (step 10), and proposing cuts in chat before they go in.
- Rehearsal: whether answers improve the text and gaps go back to the evidence base. Only the asking is tested (t5).
- The agreed-argument playback position (step 3 exception). The judge sees only the final message, so it can't tell whether the playback came before the draft.
- The version-history half of AI-originated positions. The eval sandbox blocks `git log`; runs fall back to asking the author, and one Opus run read git objects directly.
- The independent check's subagent. A drafting run spawned the Agent tool in 11 of 35 with-arm runs (Sonnet, `0d4cd59`). Elsewhere the check ran as a separate pass or not at all.
- t10: whether main-text claims link to their appendix section. Not graded; the grader checks only that method is out of the main text.
- Shape skills: the "When it fits" redirects, the briefing's "What are we less sure of?" and "what it does not solve", the chronology check, the strategy fluff check, "actions reinforce each other", first moves with a lead, and both templates' contents.
- Appendix placement by size, and the companion page (`references/appendix.md`).

### (b) Spec line with no skill text (deferred)

- Analysis scripts committed with a README, and an independent re-count of headline numbers (spec step 9).
- The project's established colours and fonts on a published page (spec step 9).
- Tables styled as distinct cards: left to the host's page guidance.
- Whether an interactive element is wanted (spec step 1): the body asks only "page or not".

### (c) Reference only, no body check

These live only in `references/writing-rules.md`. The body points to the file but does not check them, and no case grades them.

- Name who did what; never a vague "we" for one person's work.
- Don't attribute preferences people haven't stated.
- Tone towards the people who built and maintain the current design.
- Phrase limits of the data so they don't read as criticism of a person.
- Don't suggest hiding information from professionals.
- Check the sources before stating what would change a recommendation.
- Cite external research and published guidance, linked.
- Explain any method readers won't know with a short analogy.
- Use the project's spelling, British or American.
- Give the per-person or per-item figure as well as the total.

## Cost (API-equivalent, on the subscription)

Final review wave re-runs: about $2.70 (t8 $1.00, t13 $1.23, t11 $0.47).

About $69 for this round: Sonnet $31 (including the t8 description check), Opus $38.
