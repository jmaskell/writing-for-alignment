---
type: tool_used
tool: Bash
input_match: '(?:>>?\s*|\btee\s+(?:-a\s+)?|\b(?:cp|mv)\s+\S+\s+)\\?"?(?![^"\s|;&]*evidence)[^"\s|;&<>]*\.(?:md|html)\b|open\([^)]*\.(?:md|html)[^)]*,\s*\\?["\x27]w'
min: 0
max: 0
arm: both
---
The run does not write a Markdown or HTML file through the shell (redirect, tee, cp, mv or a script) other than an evidence base before the author replies.
