---
id: B7D2EF23-CD38-4FDE-93DC-D1F2E8CED113
name: Memory and Hardware 1
type: lab
assignDay: CS01
dueDay: CS02
location:
---

# Memory and Hardware 1 Lab Requirements - Due Oct 6, 2026

Answer each of the following questions in one paragraph. Write in your own words.

When finished, have an instructor sign off on your answers.

## Questions

1. **How a computer is put together.** Name the four main parts of a computer (CPU, RAM, storage, and input and output) and say what each one does. Then explain the difference between memory and storage. What is lost when a computer restarts, and what is kept?
The CPU does the work. RAM holds information the computer is using right now. Storage saves files and programs. Input/output lets us give information to the computer and get information from it. RAM is temporary, but storage keeps information even when the computer is turned off. When a computer restarts, the information in RAM is lost, but saved files stay.

2. **The stack and the heap in an interview.** Imagine you are in a job interview for an iOS developer job. The interviewer asks, "Can you explain the stack and the heap, and how they apply to Swift?" Write how you would answer. Explain what each one holds, where structs and class instances usually live, and what that means when you copy a value.
The stack and heap are places where a computer keeps information while a program is running. The stack holds temporary information, and the heap holds information that needs to stay longer. In Swift, structs are copied as separate values. Classes are copied as references, so two variables can point to the same object. This means changing a struct copy does not change the original, but changing a class object can change what both variables see.
3. **The transistors in your computer.** Find out which chip is in the computer you use for class. (On a Mac, open the Apple menu and choose About This Mac.) Then search online for how many transistors that chip has and how many CPU cores it has. Compare that to the Intel 4004 from 1971, which had 2,300 transistors. What do all of those extra transistors let your computer do? Include a link to at least one website you used.
My computer has a [put your chip name here] chip. I can find this by clicking the Apple menu and choosing About This Mac. For example, the Apple M1 has about 16 billion transistors and 8 CPU cores. The Intel 4004 from 1971 had only 2,300 transistors. The extra transistors help modern computers run apps, play videos, show graphics, and do many tasks at once. I used Apple's M1 information as a source: https://www.apple.com/newsroom/2020/11/apple-unleashes-m1/?utm_source=chatgpt.com
## Rubric

- [ ] All three questions are answered
- [ ] Each question is answered in its own paragraph
- [ ] Question 3 includes a link to at least one source
