# CSL 411 Compiler Lab - Program List
### [**KTU 2019 SCHEME**](https://ktu.edu.in/)
## [Jyothi Engineering College, Cheruthuruthy, Thrissur, Kerala](https://jecc.ac.in/)
### [Department of Computer Science & Engineering](https://jecc.ac.in/departments/computer_science_engineering)
#### 2021 - 2025 (A) Batch
##### August 2024 - November 2024
---
## [![](https://img.shields.io/badge/Source%20Code-Download_Link-brightgreen)](https://github.com/AlwinMathew2003/compiler_lab)

[![](https://img.shields.io/badge/Programs%20%26%20Viva%20by-%20Alwin%20Mathew-orange)](mailto:alwinmathew.cse21@jecc.ac.in)

## Install Flex and Bison(Linux OS)
You can install Flex (a fast lexical analyzer) and Bison (a parser generator) using the following command:
```bash
sudo apt install flex bison
```
## Verify Installation
After the installation is complete, you can verify that Flex and Bison have been installed correctly by checking their versions:
```bash
flex --version
bison --version
```
## How to Compile and Run Lex Program
1. **Save the code** to a file, e.g., `example.l`.
2. **Compile** the Lex program using Flex and GCC:  
    ```bash  
    lex file.l
    gcc lex.yy.c -lfl
    ```
3. **Run the executable**:
    ```bash
    ./a.out
    ```
## How to Compiler and Run Lex and Yacc Program
1. **Save the lex code** to a file e.g., `example.l` and yacc code to another file e.g., `example.y`
2. **Compile the Lex program** using Flex:
    ```bash
    lex example.l
    ```
3. **Compiler the Yacc program** using Bison.
    ```bash
    yacc -dy example.y
    ```
4. **Run the executable**
    ```bash
    gcc lex.yy.c y.tab.c -lfl
    ```
---
[![](https://img.shields.io/badge/Cycle-1-blue)](https://github.com/AlwinMathew2003/compiler_lab/tree/main/cycle-1)

  1. LEX Program to count the number of lines, words and
  characters in an input and input from a file.
  2. Lex program to Identify and Count Positive and Negative
  Numbers
  3. LEX Program to count the number of vowels and consonants
  4. LEX Program to remove space, tab or newline
  5. Lex program to find the length of a string
  6. To Implement a lexical analyzer in C.
  7. To write a program for implementing a Lexical analyser using
  LEX tool
  8. Generate a YACC specification to recognize a valid identifier
  which starts with a letter followed by any number of letters or
  digits.
  9. Generate a YACC specification to recognize a valid arithmetic
  expression that uses operators +, – , *,/ and parenthesis.
  10. Implementation of Calculator using LEX and YACC
  11. Write a LEX Program to convert the substring abc to ABC
  from the given input string
---
[![](https://img.shields.io/badge/Cycle-2-blue)](https://github.com/AlwinMathew2003/compiler_lab/tree/main/cycle-2)

12. Implementation of DFA
13. Implement Intermediate code generation for simple
expressions
14. Implement Backend of the Compiler
---

[![](https://img.shields.io/badge/Program-Prinouts-purple)](https://github.com/AlwinMathew2003/compiler_lab/tree/main/printouts)

1. Question for Internal and External Lab Exam.
2. Programs and outputs printouts
---
### **OTHER LABS**
[**C Lab**](https://clab.netlify.app/)&emsp;&emsp;[**Java Lab**](https://oopslab.netlify.app/)&emsp;&emsp;[**Operating System Lab**](https://oslabc.netlify.app/)&emsp;&emsp;[**Data Structure Lab**](https://dsalab.netlify.app/).&emsp;&emsp;[**System Software and Microprocessor Lab**](https://masm-8086.netlify.app/)
