---
id: 6E4004A2-1BEF-49F3-B8F5-A750C765C906
name: Systems Architecture 2
type: lab
assignDay: CS04
dueDay: CS05
location:
---

# Systems Architecture 2 Lab Requirements - Due Oct 9, 2026

Each question below is one an interviewer might ask you for an iOS developer job. Answer each one in a paragraph, in your own words, the way you would say it out loud.

When finished, have an instructor sign off on your answers.

## Questions

1. **"What's the difference between a program and a process?"** Use an app on your phone as the example. Explain what happens to each one when you quit the app and open it again. Then explain why one app crashing doesn't take down the other apps.
A program is the app stored on my phone, and a process is the app while it's running. For example, Instagram is a program when it's installed. When I open it, iOS starts a process to run it. When I close it, the process usually stops, but the program stays on my phone. When I open it again, iOS starts a new process. Each app runs separately, so if Instagram crashes, it usually won't affect other apps like Safari or Messages.

3. **"What is the iOS sandbox, and why does Apple use it?"** Name one thing an app can always reach, one thing it has to ask the user for, and one thing it can never reach.
The iOS sandbox is a security system that limits what an app can access. Apple uses it to protect user information and keep apps separate. An app can always access its own files. It needs permission to access things like the user's photos. It cannot directly access another app's private files. This helps keep apps and user data safe.

4. **"What is a thread? Would adding more threads always make an app faster?"** Explain how the OS spreads threads across CPU cores. Then explain why more threads don't always mean more speed.
A thread is a set of tasks running inside an app. For example, an iOS app can use one thread to update the screen and another to load data in the background. iOS shares threads across available CPU cores, allowing some tasks to run at the same time. But adding more threads doesn't always make an app faster because threads use resources and can compete with each other. Too many threads can actually slow things down. As an iOS developer, I'd use threads when they help the app run smoothly.
## Rubric

- [ ] All three questions are answered
- [ ] Each question is answered in its own paragraph, in your own words
- [ ] Each answer covers every part the question asks for
