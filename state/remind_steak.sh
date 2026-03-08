#!/bin/zsh
openclaw message send --channel telegram "🥩 Reminder: Order steak + asparagus — no butter, no oil! Enjoy Denver 🏔️"
# Unload and remove this one-time reminder
launchctl unload /Users/a222/Library/LaunchAgents/ai.clawd.remind.steak.plist
rm /Users/a222/Library/LaunchAgents/ai.clawd.remind.steak.plist
