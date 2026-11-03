---
type: regex
target:
  source: file
  path: docs/briefing.md
match: count:0
flags: m
---
^(?!\s*(?:[-*]|\d+\.) |\s*\|)[^\n]*;[^\n]*;[^\n]*;
