# TOOLS.md - Tool Permissions & Notes

## Google (gog skill)

Account: gary@trychert.com

### ALLOWED (read-only)
- `gog gmail search` — search threads
- `gog gmail messages search` — search individual messages
- `gog calendar events` — list calendar events
- `gog contacts list` — list contacts (for meeting attendee context)

### NEVER USE
- `gog gmail send` — FORBIDDEN
- `gog gmail drafts create` — FORBIDDEN unless Gary explicitly asks
- `gog gmail drafts send` — FORBIDDEN
- `gog calendar create` — FORBIDDEN unless Gary explicitly asks
- `gog calendar update` — FORBIDDEN unless Gary explicitly asks
- Any gmail modify/delete/label/archive operation — FORBIDDEN

### Common Commands

```bash
# Today's calendar
gog calendar events primary --from "2026-03-05T00:00:00-08:00" --to "2026-03-06T00:00:00-08:00" --account gary@trychert.com --json

# Next 24h calendar
gog calendar events primary --from "$(date -u +%Y-%m-%dT%H:%M:%SZ)" --to "$(date -u -v+1d +%Y-%m-%dT%H:%M:%SZ)" --account gary@trychert.com --json

# Recent unread important emails
gog gmail search 'is:unread is:important newer_than:3d' --max 10 --account gary@trychert.com --json

# Emails from specific person
gog gmail search 'from:someone@example.com newer_than:7d' --max 5 --account gary@trychert.com --json

# All messages in a thread (for checking if Gary replied)
gog gmail messages search 'thread:<threadId>' --account gary@trychert.com --json
```

### Environment
- Set `GOG_ACCOUNT=gary@trychert.com` when possible
- Always use `--json` for scriptable output
- Always use `--account gary@trychert.com` explicitly

## State Files

- `state/nudge_state.json` — dedup state for email nudges
- `state/heartbeat_state.json` — last check timestamps

## iMessage (primary)

- Only message Gary via iMessage to +17185619177
- Never message groups or other users
- Keep messages under 4000 chars (chunk limit)

## Telegram (backup)

- Available as fallback if iMessage is unavailable
- Only message Gary via Telegram DM
- Keep messages under 4096 chars (Telegram limit)
