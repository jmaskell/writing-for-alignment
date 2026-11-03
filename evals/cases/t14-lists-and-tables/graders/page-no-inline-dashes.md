---
type: regex
target:
  source: file
  path: docs/briefing.html
match: count:0
---
<p\b[^>]*>(?:(?!</p>)[\s\S])*?(?:\n|<br\s*/?>)\s*-[ ]
