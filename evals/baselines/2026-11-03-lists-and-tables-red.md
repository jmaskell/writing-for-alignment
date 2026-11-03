# Lists and tables, t14 RED record (2026-11-03)

Case `t14-lists-and-tables`, 3 runs per arm, on the subscription, judge Sonnet. Sonnet 5.5 ran both arms (with-without). Opus 5.5 ran the with arm only (`--ablation none`). The `skills/` directory has no list or table text yet.

Cost (JSON `costUsd`): Sonnet $2.21, Opus $4.12. No run was wasted.

**Result: the case is not RED.** The with arm scores 0.89 on Sonnet and 0.85 on Opus, above the 0.8 line. The stop rule applies: do not write skill text from this record. The case needs tightening first (see below).

| Model | With | Without |
|---|---|---|
| Sonnet 5.5 | 0.89 | 0.89 |
| Opus 5.5 | 0.85 | not run |

## Pass counts per grader (runs passing, of 3)

| Grader | Sonnet with | Sonnet without | Opus with |
|---|---|---|---|
| lists | 3 | 1 | 3 |
| no-chains | 3 | 3 | 3 |
| no-prose-items | 3 | 3 | 2 |
| blank-lines | 3 | 3 | 3 |
| table | 3 | 3 | 3 |
| status-table | 0 | 2 | 0 |
| page-lists | 3 | 3 | 3 |
| page-no-inline-dashes | 3 | 3 | 3 |
| page-table | 3 | 3 | 3 |

## Why the failures failed

- status-table, with arm, 6 of 6 runs (both models): the requirement status is a bullet list (Sonnet run 1: "- **In progress:** shift swaps. Priya and I agreed on 12 September…", "- **Not started:** rollout to all teams…") or prose (Opus run 1: "Shift swaps are still being built, with December as the target."). The only status table in the traces is in a without-arm run (Sonnet, `| Requirement | Status | Date |`). This is the one real signal, and it is 1 grader in 9.
- no-prose-items, Opus run 1: three semicolon-ended items, "- cut no-shows, Saturday's above all;", "- cost nothing beyond the current budget;", "- ask little of volunteer leads, whose time is given freely;".
- lists, Sonnet without arm, runs 2 and 3: the briefing has list lines but no two lists of three or more items.

## Why the session failure did not reproduce

- Page built by hand in all 9 runs: each wrote `docs/briefing.html` with the Write tool as HTML. None used a Markdown converter. Opus run 2 looked for one (`which pandoc; python3 -c "import markdown"`), found none, and wrote HTML by hand. The failing pattern (a list under "She built:" with no blank line, converted by Python-Markdown) needs a converter.
- Every briefing.md has list items preceded by a blank line (blank-lines 9 of 9 pass) and every page has `<li>` and `<table>`.

## Label

GUARD on the page and the blank-line graders (the unaided agent passes). Not RED evidence, and not plugin-induced. Only status-table and, on Opus, no-prose-items fail with the plugin.

## For the case author

- The scaffold gives no Python-Markdown (the sandbox's `import markdown` failed on a cache write), so the page path does not exercise the converter. A fixture or prompt that makes a converter the easy route would reproduce the failure. This is a case design change, not a harness fact.
- Reasons come from the grader evidence in `evals/results/2026-11-03-t14-red-*.json` (gitignored). The briefing text was recovered from the Write calls in the kept traces.
