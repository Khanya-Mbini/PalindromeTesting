# PalindromeTesting
Automated test for "Is this a palindrome?" at https://xndev.com/palindrome

## Setup instructions

### What you need

* Download or clone this repo
* Download and install [nodejs](https://nodejs.org/en/download) OR
* Download and install [NVM](https://github.com/nvm-sh/nvm) or [NVM for Windows](https://github.com/coreybutler/nvm-windows)

### Getting started

* Run `npm install` from the project root
* Run `npm run codeceptjs` to run all feaures 
* (Optional) Run `npm run codecept:reporter` to run test with a test reporter. You will find this in a folder named `output`

## Question 1

I would ask the PO the following questions to basically just ascertain what is a bug and what is not:

1. Should this test be case sensitive?
2. How do we want this feature to process white spaces?
3. What do we want to do with single letter/number input?

## Question 2

- Does it recognize and process numbers correctly?
- Does it recognize and process text correctly
- Does it process special characters correctly?
- Does it recognize and process white spaces?
- Is a mix of text and numbers processed as expected
- Is the palindrome test case sensitive ?
- How is an empty string processed?
- How is a single character processed?



## Possible Bugs

**Bug Name:** The output string does not reflect the input correctly, this was noted in the use of white spaces in the input

**Bug ID:** 0001 

**Assigned to:** Rob

**Reported By:** Khanya Mbini

**Reported On**: 19/08/2021

**Severity:** Low

**Priority:** Low

**Status:** New

**Reason:** Defect


**Environment:** Chrome Browser Version 92.0.4515.159 (Official Build) (64-bit)

**Description:** The output string does not reflect the input correctly, this was noted in the use of white spaces in the input. The white spaces are not represented in the output message as per the input.

**Steps To Reproduce:**

1. Navigate to https://xndev.com/palindrome
2. In the palindrome input field, enter ' 11 '
3. Click 'Submit' button

**Expected Result:** On clicking Submit button,  the output message should read:
> “Yes! '  11  ' reversed is '  11  '

**Actual Result:** On clicking Submit button,  the output message reads:
> “Yes! '11' reversed is '11'
---

**Bug Name:** The output message incorrectly reads 'reserved' as opposed to 'reversed'

**Bug ID:** 0002

**Assigned to:** Rob

**Reported By:** Khanya Mbini

**Reported On:** 19/08/2021

**Severity:** Low

**Priority:** Low

**Status:** New

**Reason:** Defect

**Environment:**  Chrome Browser Version 92.0.4515.159 (Official Build) (64-bit)

**Description:** When a user inputs a non palindromic text in the text field, the output message incorrectly reads 'reserved' as opposed to 'reversed'

**Steps To Reproduce:**
1. Navigate to https://xndev.com/palindrome
2.  In the palindrome input field, enter 'song'
3. Click 'Submit' button

**Expected Result:** On clicking Submit button, the output message should read:
> “No! 'song' reversed is 'gnos'

**Actual Result:** On clicking Submit button, the output message reads:
> “No! 'song' reserved is 'gnos'