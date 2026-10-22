# Volunteer rota app: spec (v3)

Owner: Sam Okafor (product lead). Last updated 14 September.

Northside Food Bank runs its volunteer rota from a shared spreadsheet and a WhatsApp group. This spec covers the app that replaces both. Decisions are cited by ID and logged in `decisions.md`; form fields are cited by code.

## Scope

The app lets the coordinator publish shifts, lets volunteers sign up, and reminds volunteers before they are due.

## Sign-up form

| Code | Field |
|---|---|
| Q1 | Full name |
| Q2 | Mobile number |
| Q3 | Email address |
| Q4 | Which days can you usually help? |
| Q5 | Which roles have you done before? |
| Q6 | Can you lift 10 kg? |
| Q7 | Do you have a current food hygiene certificate? |
| Q8 | Emergency contact name |
| Q9 | Emergency contact number |
| Q10 | How did you hear about us? |
| Q11 | Do you need a reference letter for work or study? |
| Q12 | Preferred way to be contacted |
| Q13 | Anything we should know to help you volunteer safely? |
| Q14 | Do you agree to our volunteer handbook? |

Q12 is shown only when the volunteer gave both a mobile number (Q2) and an email address (Q3). Per D4, the only reminder channel at launch is email, so Q12 is hidden until a second channel exists.

## Reminders

Reminders go out by email only (D4). A reminder is sent 48 hours and 4 hours before a shift. Volunteers who have not confirmed 24 hours ahead show on the coordinator's follow-up list. The earlier SMS plan (D2) is superseded.

## Swapping shifts

Volunteers swap shifts in the app (D7). The direction is agreed. The details are open: who approves a swap, and whether a swap needs a replacement named in advance.

## Reporting

The coordinator sees a weekly view of filled shifts, confirmations and no-shows. The no-show counting rule is in `analysis/no-shows.md` (D6).

## Rollout

Pilot with the Saturday and Tuesday teams in November (D9), then all teams in January.
