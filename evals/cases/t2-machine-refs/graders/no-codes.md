---
type: regex
target:
  source: file
  path: docs/briefing.md
match: count:0
---
\b(?:D\d|Q\d{1,2}|v3)\b|\b[\w-]+\.md\b
