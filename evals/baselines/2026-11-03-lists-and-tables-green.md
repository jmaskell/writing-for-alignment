# Lists and tables: GREEN record (2026-11-03)

Subscription, judge Sonnet. RED is in `2026-11-03-lists-and-tables-red.md`.

**Verdict: t14 is a GUARD case, not clean RED-to-GREEN evidence.** The RED record already showed the without arm passing 0.89. On the final text the with arm scores 0.978 and the without arm 0.911. The without arm's status-table grader swung from 2/3 (RED, Sonnet) to 5/5 (GREEN rounds 1 and 2) to 4/5 (round 3, final text) with no skill text involved, so the 0.067 gap is within case noise. The text is kept because it passes the case, breaks nothing in t6 and t9, and the owner chose to set the core body limit at 1,050 for it.

The RED stop rule (with arm above 0.8) was tripped. The owner reviewed the RED result and said "go", which overrode the stop rule and narrowed the scope to the status-table and Writing rules changes.

## Changes in this round

1. **`47d3a68`** (interim wording, later partly reverted by `d2eb006`): step 4 (tables are not visuals), step 9 (page check), one Writing rules bullet (tabulate status and comparisons, full-sentence list items, blank line before lists and tables). Body limit tightened by cuts. The round 1 Writing rules bullet, from `git show 47d3a68:skills/writing-for-alignment/SKILL.md`:

   > - Tabulate, one row per item, whatever has a status per item or compares on two or more attributes (options by cost and effect). List items are full sentences, capital first, no trailing semicolon. Prose for reasoning. Blank line before every list and table.
2. **`d2eb006`:** the trimmed rules restored; `scripts/check-skill-size.sh` core limit 1,050 (owner decision). Three additions only; `git diff 1406f25 d2eb006 -- skills scripts`.

## Scores

| Case | Model | Runs | With | Without | Text |
|---|---|---|---|---|---|
| t14-lists-and-tables | Sonnet 5.5 | 5 | 0.911 | 0.978 | `47d3a68`, first wording (round 1) |
| t14-lists-and-tables | Sonnet 5.5 | 5 | 0.956 | 1.000 | `47d3a68` (round 2) |
| t14-lists-and-tables | Sonnet 5.5 | 5 | **0.978** | **0.911** | `d2eb006` (final text) |
| t14-lists-and-tables | Opus 5.5 | 3 | 1.00 (all 9 graders, 3/3) | not run | `d2eb006` |
| t6-visual-restraint | Sonnet 5.5 | 3 | 0.917 | 0.75 | `d2eb006` |
| t14-lists-and-tables | Sonnet 5.5 | 3 | **1.000** | 0.963 | final review fix (table rule needs two items) |
| t6-visual-restraint | Sonnet 5.5 | 3 | **1.000** | 0.750 | final review fix |
| t9-plain-english | Sonnet 5.5 | 3 | 1.00 | 1.00 | `d2eb006` |

Final-text t14 on Sonnet: status-table 4/5 with and 4/5 without; the without arm also dropped one run each on blank-lines, lists and no-prose-items. Every other grader passed 5/5 in both arms.

Final-fix runs (3 runs, both arms): t14 with 1.000 (all 9 graders, 3/3); without 0.963, one blank-lines fail. t6 with 1.000; without 0.750 (visuals 0/3), as recorded before. The earlier t6 miss (0.917) did not recur.

## Regression

- **t6:** last recorded 1.00 (5 runs, `0d4cd59`; 1.00 at `6d03190`). Now 0.917: visuals failed in 1 of 3 with-arm runs, which is exactly one run's worth on 3 runs. The failing reply proposed one visual (a text bar chart, described but not mocked up) and the judge voted FAIL x3. Without arm 0.75 (visuals 0/3), as recorded before. Noise, not chased; not re-run.
- **t9:** last recorded 1.00 / 1.00. Now 1.00 / 1.00. No regression.

## Review Focus notes

The `--keep-temp` flag was not used in these runs, so the traces are gone. Notes come from grader verdicts and judge evidence.

- **3, over-correction:** none seen. t9's plain-English graders passed 6/6 across both arms. In t6 the only miss was too few sketches, not tables or bullets standing in for visuals. The t6 with-arm reply did use a table in its playback, and the judge did not count it as a visual.
- **4, hand-written HTML:** not measurable here. The RED traces showed all 9 runs writing the page by hand, and the scaffold has no Markdown converter. The page graders pass without exercising the converter fault. Step 9's page check is therefore untested.
- **5, missing file:** no "no draft" run in any GREEN batch. All t14 runs, Sonnet and Opus, produced `docs/briefing.md` and `docs/briefing.html`.

## Not tested

- **Step 9's page check** ("every list and table renders as one, no `- ` left in a paragraph"). The harness has no converter to flatten a list, so the failing path cannot occur. Kept as a spec line.
- **Step 4's wording** ("Tables don't count as visuals"). No case isolates it. t6 shows no side effect on visual counts but does not test the sentence.
- **"Capital first"** in list items: no grader checks it.
- **Blank-line rule**: passed in both arms in RED, so it never failed without the skill. The grader is GUARD only.
- **The list grader** tests the dropped "three or more as bullets" rule and is GUARD only.
- **Grader limits:** blank-lines and no-chains give false FAILs inside fenced code blocks; blank-lines also fails on wrapped list continuation lines; lists counts a nested list as two; page-no-inline-dashes misses a list flattened onto one line.
- **Opus, without arm** for t14, and Opus for t6 and t9: not run.
- **Opus and t9** were not re-run on the final-fix text (SKILL.md line 58 reworded after `d2eb006`).
- **Other cases** (t1, t1b to t5, t7, t8, t10 to t13): not re-run on the final text. Their last scores are in `2026-10-22-writing-for-alignment-green.md`.

## Cost

Sum of `costUsd` over every `evals/results/2026-11-03-*.json`: **$27.19**.

| File | Cost |
|---|---|
| t14 RED, Sonnet | $2.21 |
| t14 RED, Opus | $4.12 |
| t14 GREEN round 1 | $4.10 |
| t14 GREEN round 2 | $3.68 |
| t14 GREEN final text | $3.61 |
| t14 pre-merge, Opus | $4.23 |
| t6 regression | $0.92 |
| t9 regression | $1.05 |
| t14 final fix, Sonnet | $2.40 |
| t6 final fix, Sonnet | $0.87 |
