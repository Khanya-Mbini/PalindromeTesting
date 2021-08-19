const { I } = inject()

Given('User is on the palindome page', () => {
    I.amOnPage('https://xndev.com/palindrome')
});

When('they input {}', (input) => {
  I.fillField('#originalWord', input);
  I.click('#button1');
});

Then('they should see a message that {} is a palindrome', (input) => {
  I.see(`Yes! ${input} reversed is ${input}`, '#palindromeResult');
});

Then('they should see a message that {} reversed is {}', (input, reversed) => {
    I.see(`No! ${input} reserved is ${reversed}`, '#palindromeResult');
})