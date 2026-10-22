# Writing for alignment, release 1: RED baseline (2026-10-22)

Sonnet 5.5, judge Sonnet, 3 runs per arm, on the subscription. The `skills/` directory is empty, so the with arm runs without skills and both arms behave as an unaided agent. Cost: about $20.70 API-equivalent, including the first pass of the six cases tightened below.

The skill-fired graders cannot pass in either arm, so a case with one has a ceiling of (n−1)/n. Scores are the mean share of passing graders. With and without differences on the same behaviour are judge and sampling noise.

| Case | With | Without | Failing graders (with arm) | Label |
|---|---|---|---|---|
| t1-playback-gate | 0.33 | 0.33 | skill-fired 0/3; states-position 0/3: the reply is an outline of sections with a few questions, and does not separate decided from inferred or open | RED |
| t1b-playback-preset | 1.00 | 1.00 | none: both arms spot that SMS was dropped for email and ask Sam | GUARD |
| t2-machine-refs | 0.50 | 0.33 | no-codes 1/3: the draft cites D4, D6 or v3, or names `decisions.md` and `no-shows.md` in a sources line; described-by-content 2/3 | RED |
| t3-transcript-fidelity | 1.00 | 1.00 | none: the Saturday idea is reported as an open question by both arms | GUARD |
| t4-ai-position | 0.67 | 0.67 | sms-not-plan 2/3, all passes judged PASS; the one miss is a run that wrote no `docs/briefing.md` (grader threw) | GUARD |
| t5-rehearsal | 0.67 | 0.44 | asks-hard 0/3: the reply fact-checks the draft (arithmetic, unsourced sentences) and edits it, and asks no argument-level question; no-self-answer passes 3/3 with, 1/3 without (the unaided agent rewrites the draft for Sam) | RED |
| t6-visual-restraint | 0.50 | 0.50 | visuals 0/3: the plan proposes a table at most, and no sketched visual tied to a named point | RED |
| t7-thinking-mode | 0.83 | 0.83 | thinks 2/3: one run gives a position but no split of decided, inferred and open | GUARD |
| t8-shape-choice | 0.33 | 0.00 | skill-fired 0/3; names-shape 2/3 with, 0/3 without: the unaided reply gives an outline and never names a document type | RED |
| t9-plain-english | 1.00 | 1.00 | none: no AI-tell phrase in any draft | GUARD |
| t10-appendix | 0.00 | 0.00 | method-in-appendix 0/3: the counting rule is in the main text, in the opening problem section, and there is no appendix | RED |
| t11-strategy-no-diagnosis | 0.56 | 0.67 | skill-fired 0/3; asks-challenge 2/3 with, 3/3 without: the unaided agent already says the okrs hold goals only and asks. One with-arm miss asks broad background questions and never asks for the challenge | GUARD on behaviour; RED on skill-fired only |
| t12-strategy-kernel | 0.44 | 0.33 | skill-fired 0/3; coherent 1/3 with, 0/3 without: the draft has a diagnosis then a list of what the app must do, with no distinct guiding policy; diagnosis 3/3 both | RED |
| t13-briefing-shape | 0.27 | 0.27 | skill-fired-writing-briefings 0/3; core-not-alone 0/3; ends-agree 0/3: the last main section is next steps or open questions, not an ask for agreement; position 1/3: options are recommended with no reason | RED |

## Cases tightened after the first pass

Six cases scored with a behaviour pass the unaided agent could reach. Each was tightened once and re-run at 3 runs per arm.

| Case | First pass (with / without) | Change | After |
|---|---|---|---|
| t1 | 0.67 / 0.67 (states-position 3/3 both) | states-position also requires the reply to say which points are decided, inferred or open (spec step 3) | 0.33 / 0.33 |
| t2 | 0.33 / 1.00 (no-codes 1/3 vs 3/3) | no-codes regex also bans `.md` file names; the unaided draft opens with a sources line | 0.50 / 0.33 |
| t3 | 1.00 / 1.00 | prompt adds "Include where the coordinator and I got to on the 12 September call, and what is still open" so the Saturday idea reaches the draft | 1.00 / 1.00, kept as GUARD |
| t4 | 1.00 / 1.00 | prompt adds "Include how we got to this reminder plan, including what was considered earlier" so SMS reaches the draft | 0.67 / 0.67, kept as GUARD |
| t5 | 0.78 / 0.89 (asks-hard 1/3 vs 2/3) | asks-hard excludes questions about sources, arithmetic and wording | 0.67 / 0.44 |
| t12 | 0.67 / 0.56 (coherent 3/3 vs 2/3) | coherent requires a distinct guiding policy | 0.44 / 0.33 |

## Notes

- t3, t4 and t9 stay GUARD: no tightening that avoids naming SMS or dropping Saturday in the prompt made the unaided agent fail. t4's two passes are judged on a file; the one miss is a missing file.
- t1b, t7 and t11 stay GUARD on behaviour. t11 is still RED through its skill-fired grader.
- A run that does not write the exact path a file grader names fails that grader ("does not exist"). t4 run 2 hit this in both arms.
- Reasons come from the grader evidence in `evals/results/*.json` (gitignored).
