---
id: 5B536591-068D-4241-A1EE-3AB26F27E02A
name: Systems Architecture 3
type: lab
assignDay: CS05
dueDay: CS06
location:
---

# Systems Architecture 3 Lab Requirements - Due Oct 12, 2026

Each question below is one an interviewer might ask you for an iOS developer job. Answer each one in a paragraph, in your own words, the way you would say it out loud.

When finished, have an instructor sign off on your answers.

## Questions

1. **"What is the main thread, and why does UI work have to happen there?"** Explain what the main thread does. Then describe what a user sees if an app runs long work on the main thread.
The main thread is what handles the app's screen and user interactions, like tapping buttons or scrolling. UI updates need to happen on the main thread so everything works smoothly. If I run a big task on the main thread, the app can freeze or become slow. To prevent that, I would run heavy tasks in the background and update the UI on the main thread.
2. **"Walk me through the iOS app lifecycle."** Name the four states an app moves through and say what each one means. Then describe one real moment on your phone that moves an app from active to background.
The four states are not running, inactive, active, and background. Not running means the app is closed. Inactive means the app is open but not responding to input for a moment. Active means the user is using the app. Background means the user has left the app, but it may still be running for a little. For example, if I'm using an app and swipe up to go to the Home Screen, the app moves from active to background.
3. **"Why does iOS suspend or end apps in the background?"** Explain what happens to an app's memory when it's suspended and when it's ended. Then explain what this means for `@State` values, and what you would do so a user doesn't lose their work.
iOS suspends or ends apps to save battery and memory. When an app is suspended, it stays in memory but stops running. When it's ended, its memory is cleared. This means @State values can be lost if the app is ended. To prevent users from losing their work, I would save important data to storage so it can be restored when they open the app again.
## Rubric

- [ ] All three questions are answered
- [ ] Each question is answered in its own paragraph, in your own words
- [ ] Each answer covers every part the question asks for
