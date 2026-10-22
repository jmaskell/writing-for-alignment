---
type: regex
target:
  source: file
  path: docs/briefing.md
match: count:0
flags: i
---
(?:It[’']s important to note|In conclusion|delve|isn[’']t just|not only [^.]{0,60} but)
