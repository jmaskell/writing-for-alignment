# Writing for alignment

A Claude Code plugin for writing documents that share your thinking with colleagues. It helps you build a clear story with a position, keeps fact apart from proposal, and leaves you able to defend every line.

## The skills

| Skill | Use it for |
|---|---|
| `writing-for-alignment` | The core process for any document that shares your thinking: clarify, gather an evidence base, play the argument back before drafting, plan, draft, check, rehearse, publish. Picks a shape when you name none, and has a thinking mode that stops at the playback. |
| `writing-briefings` | Briefings, state-of-the-union and "where we are" updates for stakeholders. Loads the core skill, then orders the document by the readers' questions (why it matters, what it is, what we learned, what we propose, what we are less sure of) and ends by asking readers what they agree and disagree with, then the next steps. Adds the briefing failure checks to the independent check. Outline: `templates/briefing.md`. |
| `writing-strategy` | Strategies, using Richard Rumelt's kernel. Loads the core skill, then orders the document as diagnosis (what is really going on), guiding policy (our approach) and coherent actions, ending on the first moves. Asks the author for the challenge when the material holds only goals, and never invents one. Adds Rumelt's signs of bad strategy, plus two kernel checks, to the independent check. Outline: `templates/strategy.md`. |

The core skill checks every draft against its writing rules: claims classified in words, things named and never cited by ID, always a position, two or three visuals at most, method in an appendix at the end, no AI tells. A fresh agent checks the draft against the evidence base. Before the document goes out, the rehearsal asks you the hardest questions a reader would ask, one at a time; your answers improve the text, and the skill never answers for you. Full rules: `references/writing-rules.md`; the appendix: `references/appendix.md`.

## Checks

Run these before you commit:

- `bash scripts/check-portability.sh`
- `bash scripts/check-skill-size.sh`
- `bash scripts/check-readme.sh`
