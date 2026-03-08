# HEARTBEAT.md

Check these on each heartbeat (08:00–22:00 PT only):

1. Calendar: meetings in next 6 hours → prep + nudge if < 2h away
2. Gmail: unread actionable inbound emails older than 3h with no reply from Gary → nudge candidates
3. Deduplicate against `state/nudge_state.json` — skip already-nudged unless thread changed or 24h passed
4. Update `state/nudge_state.json` after nudging
5. If nothing needs attention → HEARTBEAT_OK
