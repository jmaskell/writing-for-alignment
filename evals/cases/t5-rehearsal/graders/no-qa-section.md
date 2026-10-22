---
type: regex
target:
  source: file
  path: docs/briefing.md
match: count:0
flags: im
---
^#+ .*(?:hard questions|FAQ|questions (?:and|&) answers)
