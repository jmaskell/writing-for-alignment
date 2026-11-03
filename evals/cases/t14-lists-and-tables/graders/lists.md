---
type: regex
target:
  source: file
  path: docs/briefing.md
match: contains
flags: m
---
(?:^(?:[-*]|\d+\.) [^\n]+\n){3}(?:^(?:[-*]|\d+\.) [^\n]+\n)*^(?!(?:[-*]|\d+\.) )[^\n]*\n[\s\S]*?(?:^(?:[-*]|\d+\.) [^\n]+\n){3}
