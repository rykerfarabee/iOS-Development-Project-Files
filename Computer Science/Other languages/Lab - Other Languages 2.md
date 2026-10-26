---
id: 733FB2F1-4FBD-4091-8B3A-5A0D37F6125A
name: Other Languages 2
type: lab
assignDay: CS09
dueDay: CS10
location:
---

# Other Languages 2 Lab Requirements - Due Oct 20, 2026

In class today you wrote your first Python and JavaScript. Tonight you'll use one of them to build a small program that tracks a weekend budget. There's no UI. The program just prints. Plan on about 30 minutes.

Pick **Python** or **JavaScript** and use it for the whole lab. The Other Languages 3 lab adds to this same file tomorrow, so pick the one you want to keep working in.

## Instructions

### Step 1: Set up

1. Make a new folder named `Other Languages Lab`.
2. Open it in VS Code with File → Open Folder.
3. Make a new file inside it named `budget.py` or `budget.js`.
4. Make the first line of the file print `Weekend Budget`.
5. Run it.
    - **Python:** open VS Code's terminal (View → Terminal) and type `python3 budget.py`.
    - **JavaScript:** copy everything in `budget.js`, paste it into Chrome's JavaScript Console, and press Return. If the console says something "has already been declared," refresh the page and paste again.

Run your file after every step from here on.

### Step 2: The budget

Make a variable named `budget` that holds how much money you have for the weekend. Pick any whole-dollar amount.

In JavaScript, use the keyword that keeps `budget` from changing. Python has no keyword for that, so just give it a value.

Print it with string interpolation so it reads `Budget: $200`. (Hint for JavaScript: a `$` right before `${` prints as a plain dollar sign.)

### Step 3: The expenses

Make a list named `expenses` with **at least 4** things you'd spend money on this weekend. Each expense is a dictionary (Python) or an object (JavaScript) with two keys:

- `name`, like Groceries or Gas
- `amount`, a whole-dollar number

(Hint: in Python, `expense["amount"]` gets the amount. In JavaScript, use `expense.amount`.)

### Step 4: Print each expense

Write a loop that prints each expense on its own line, like `Groceries: $65`.

In JavaScript, use `for...of`. Remember that `for...in` gives you indexes, not items.

(Hint for Python: inside an f-string, use single quotes for the key, like `expense['name']`.)

### Step 5: Add it up

Write a function that takes the list of expenses and returns the total.

- Python: name it `total_spent`
- JavaScript: name it `totalSpent`

Use a loop inside the function, not a built-in shortcut. Store the result in a variable named `spent`. Then print two lines: how much you spent, and how much you have left.

### Step 6: Check the budget

Write a function that takes a budget and an amount spent, and returns one of three strings:

- `Under budget`
- `Right on budget`
- `Over budget`

Name it `budget_status` in Python or `budgetStatus` in JavaScript. Use an `if`, an `elif` or `else if`, and an `else`.

Print the result for your real `budget` and `spent`. Then call it **two more times** with numbers you make up, so all three results print at least once.

### Step 7: Break it on purpose

1. Misspell `spent` in one of your print lines.
2. Run the file and read the error.
3. On the line above it, write a comment with the error type and the line number the error points to.
4. Fix the spelling and run it again.

Leave the comment in your file.

### Example output

Your names and numbers will be different. The shape should match.

```
Weekend Budget
Budget: $200
Groceries: $65
Gas: $40
Pizza: $24
Movie tickets: $30
Spent: $159
Left: $41
Under budget
Right on budget
Over budget
```

When finished, have an instructor sign off on your work.

## Black Diamond

Print the expenses from most to least expensive. Find out how to sort a list on your own in the official docs: docs.python.org for Python, or MDN (developer.mozilla.org) for JavaScript. Look for how to sort by one key, `amount`. Then explain to an instructor how your sort decides which expense comes first.

## Rubric

- [ ] `budget.py` or `budget.js` runs from the terminal or the browser console
- [ ] `budget` holds a whole-dollar amount, and in JavaScript it can't be changed
- [ ] `expenses` has at least 4 expenses, each with a `name` and an `amount`
- [ ] A loop prints each expense on its own line
- [ ] `total_spent` or `totalSpent` uses a loop and returns the right total, and Spent and Left both print
- [ ] `budget_status` or `budgetStatus` prints all three results
- [ ] A comment names the error type and line number from Step 7
