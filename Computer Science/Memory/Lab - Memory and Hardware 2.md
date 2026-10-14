---
id: 5C7219A2-A252-461D-867D-FF7AA1877FF8
name: Memory and Hardware 2
type: lab
assignDay: CS02
dueDay: CS03
location:
---

# Memory and Hardware 2 Lab Requirements - Due Oct 7, 2026

Answer each of the following questions in one paragraph. Write in your own words.

When finished, have an instructor sign off on your answers.

## Questions

1. **Limits on numbers.** Explain why an `Int` in Swift has a biggest and smallest value, and what happens when your code goes past it. Then explain why math with a `Double` sometimes gives an answer that is a tiny bit off, like `0.1 + 0.2` printing `0.30000000000000004`. Use the words bit and byte in your answer.
An Int has a biggest and smallest number because a computer can only store a certain number of bits. A byte is 8 bits. If an Int goes past its limit, Swift can cause an error. A Double can also be a little off because computers cannot store every decimal number exactly. This is why 0.1 + 0.2 can sometimes equal 0.30000000000000004.
2. **Why leaks matter to you.** iOS frees all of an app's memory when the app quits. So why should you care about memory leaks while the app is running? Describe a screen in an app you would like to build that a user might open over and over. Explain what could happen if that screen leaked, and how `weak` or `[weak self]` would help.
Memory leaks are a problem because they make an app use more memory while it is running. For example, if I made a photo screen that a user opened many times, a leak could make the app get slower or even crash. weak and [weak self] can help by letting unused objects be removed from memory.
3. **Inside your chip.** Find out which chip is in the computer or iPhone you use. (On a Mac, open the Apple menu and choose About This Mac. On an iPhone, search online for your model.) Then search online to find how many performance cores, efficiency cores, GPU cores, and Neural Engine cores it has. Pick one feature on that device that uses the Neural Engine, and explain what it does. Include a link to at least one website you used.
My MacBook Air has an Apple M5 chip. It has 4 performance cores, 6 efficiency cores, 8 GPU cores, and 16 Neural Engine cores. The Neural Engine helps the Mac with AI tasks, such as recognizing images. Link: https://www.apple.com/macbook-air/specs/
## Rubric

- [ ] All three questions are answered
- [ ] Each question is answered in its own paragraph
- [ ] Question 3 includes a link to at least one source
