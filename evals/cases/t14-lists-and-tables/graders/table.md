---
type: regex
target:
  source: file
  path: docs/briefing.md
match: contains
flags: m
---
^\|[^\n]*\|[ \t]*\n\|[ \t]*:?-{3,}
