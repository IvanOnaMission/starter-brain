---
name: setup
description: Set up the business brain by interviewing the owner and filling in the files. Use when the owner types /setup, asks to set up their brain, or when the brain files are still mostly {{placeholders}}.
---

# Setup

You're filling in the business brain by interviewing the owner. Keep it relaxed and quick, about 20 minutes. They talk, you write.

## 1. Start

Read `CLAUDE.md` and every file in the brain. Note which `{{placeholders}}` are already filled so you never ask for something that's already there.

Then tell the owner, in two or three short lines:

- You'll ask about 7 questions, one at a time.
- Talking is better than typing (dictation on a Mac or phone, or an app like Wispr Flow), and messy answers are fine.
- At the end you'll try it out on a real job.

## 2. The questions

Ask one at a time. Wait for the answer before the next one. After an answer, ask at most one short follow-up, and only if something important is missing, like a number. Skip any question the brain already answers.

1. What does the business do, who's it for and where do you work? Anything you won't take on?
2. Who's on the team, what does each person do, and who can approve quotes, discounts or spending?
3. What software do you use for jobs, quotes, invoices and email?
4. How do you price work? Hourly rates, call-out fee, after-hours, minimum charge, markup on materials, any fixed prices.
5. How do you quote? What do you need first, who checks it, how it's sent and when you follow up. How do you handle new enquiries?
6. How does a job run from booking to handover, and how and when do you invoice and get paid? What's your warranty?
7. How do you talk to customers? The tone, words you'd never use, how you sign off, and the questions customers ask all the time.

## 3. Write it up

Put each answer in the file the map in `CLAUDE.md` points to:

- Replace each `{{placeholder}}` with what they said, in short plain sentences, using their words where you can.
- Put each fact in one place only, even when it came up in two answers. Use the map to decide which file owns it.
- Leave a `{{placeholder}}` in place when they didn't answer it. Never make anything up.
- Delete a table row or section only if they said it doesn't apply to them.
- Never create a folder. A new file is fine inside an existing folder if it's a new subject; add a row to that folder's `context.md`.

## 4. Check it with them

Show a short summary in plain words, grouped (the business, the team, pricing, quoting, jobs and invoicing, how you talk). No file names. Ask: "Anything wrong or missing?" Fix what they say.

## 5. Save it

Follow step 5 of the `save` skill to send it to GitHub. Tell them it's saved in one line.

## 6. Try it on a real job

Ask for a real job to try it on: a customer message to reply to, a quote to follow up or a question a customer asked. Do it using the brain, and point out one thing you used from what they told you.

## 7. Finish

Give them five things to try. Fill every bracket with their real job types, customers and tools from the interview, so each one is ready to copy:

1. "Reply to this enquiry: [paste it]"
2. "Write a follow-up for the quote I sent [customer] for [one of their job types]"
3. "How much would we charge for [one of their job types]?"
4. "Save this: [a new rule or price]"
5. "What's our warranty on [one of their job types]?"

Tell them that whenever they correct you, they can say "save that" and it'll stick, and that running `/setup` again only asks about what's still blank.
