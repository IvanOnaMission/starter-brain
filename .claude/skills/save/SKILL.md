---
name: save
description: Save something to the business brain. Use when the owner types /save or says "save that", "remember this", "add that to the brain", or tells you a price, rule or detail has changed and wants it kept.
---

# Save

The owner asked you to save, so save it. Don't ask permission. The only time you stop and ask is when it fits no folder.

## 1. Work out what to save

Pull out each fact the owner wants kept: a rule, a price, how they do something, a decision, a customer detail. Write each as one short plain sentence. If they just said "save that", it's the last thing they told you or corrected.

Never save:

- Passwords, logins, API keys, bank or card numbers, or IRD numbers. Tell them you can't keep those in the brain and they belong in a password manager.
- Chit-chat, one-off tasks or drafts.

## 2. Find where each fact goes

1. Use the map and the "when two places fit" rules in `CLAUDE.md` to pick the folder.
2. Open that folder's `context.md` and pick the file.
3. If no file in the right folder fits but the folder does, create a new file there: one subject, lowercase-with-dashes name. Add a row for it to that folder's `context.md`.
4. A customer: `clients/{name}.md`. Search `clients/` for their name first and create the file only if they're not there. Add a row to `clients/context.md` for a new one.
5. If no folder fits, stop and ask the owner which area it belongs to, listing the areas in plain words (the business, sales and pricing, marketing, how jobs run, getting paid, customers). Never create a folder.

## 3. Check it isn't already there

Before writing, search the whole brain for it: the key words, any number, the customer's name.

- Already there and the same: nothing to change.
- Already there but different: replace the old version where it is. Never keep both. If it's unclear whether they meant to change it, ask.
- Also written somewhere it doesn't belong: keep it only in the right place and remove the other copy.
- Not there: add it under the right heading, replacing the `{{placeholder}}` if there is one.

## 4. Write it

Short, plain sentences. Keep the file's headings and tables.

## 5. Send it to GitHub

Run these one at a time:

```
git add -A
git commit -m "save: <what was saved, in a few words>"
git pull --rebase
git push
```

If the pull or push fails, don't force anything and don't retry with other commands. Tell the owner it's saved on this computer but didn't reach GitHub, and what went wrong in plain words. Usually it means they're not signed in to GitHub.

## 6. Tell them

One line per fact, plain words, no file names: "Saved your call-out fee with your pricing." If you replaced something, say what changed: "Updated your call-out fee from $85 to $95."
