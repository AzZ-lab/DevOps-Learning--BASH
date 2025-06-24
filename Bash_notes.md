## 📚 Bash Scripting Notes

Check out [`Bash_Notes.md`](Bash_Notes.md) for essential Bash scripting notes and tips.

````

---

## `Bash_Notes.md`

```markdown
# Bash Scripting Notes

## 1. Script Structure

- **Shebang:** Always start your script with:
  ```bash
  #!/bin/bash
````

* **Make Executable:** Give your script permission to run:

  ```bash
  chmod +x script.sh
  ```

---

## 2. Variables

* **Assign a variable:**

  ```bash
  NAME="Alice"
  ```
* **Use a variable:**

  ```bash
  echo $NAME
  ```

---

## 3. User Input

* **Prompt and read input:**

  ```bash
  read -p "Enter your name: " NAME
  echo "Hello, $NAME!"
  ```

---

## 4. Conditionals

* **If-else statement:**

  ```bash
  if [ "$NAME" = "Alice" ]; then
    echo "Hello, Alice!"
  else
    echo "You're not Alice."
  fi
  ```

---

## 5. Loops

* **For loop:**

  ```bash
  for i in {1..5}; do
    echo $i
  done
  ```

* **While loop:**

  ```bash
  count=1
  while [ $count -le 5 ]; do
    echo $count
    ((count++))
  done
  ```

---

## 6. Functions

* **Define and use a function:**

  ```bash
  greet() {
    echo "Hello from a function!"
  }

  greet
  ```

---

## 7. Command Line Arguments

* `$0` — script name
* `$1`, `$2`, ... — first, second, etc. arguments
* `$#` — number of arguments
* `$@` — all arguments

**Example:**

```bash
echo "Script name: $0"
echo "First arg: $1"
echo "Total args: $#"
```

---

## 8. File Operations

* **Check if a file exists:**

  ```bash
  if [ -f "file.txt" ]; then
    echo "file.txt exists."
  fi
  ```

* **Loop through files in a directory:**

  ```bash
  for file in *.txt; do
    echo "Found file: $file"
  done
  ```

---

## 9. Useful Bash Commands

* `echo` — print text to the terminal
* `cat` — display file content
* `ls` — list directory contents
* `cp` — copy files or directories
* `mv` — move/rename files or directories
* `rm` — remove files or directories
* `grep` — search for patterns in files
* `awk`, `sed` — text processing

---

## 10. Good Practices

* Always quote variables: `"$VAR"`
* Use comments to explain your code: `# This is a comment`
* Use clear and descriptive variable names
* Test scripts on sample data before using on real data

