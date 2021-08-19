Feature: Palindrome Test
    Background:
        Given User is on the palindome page

    Scenario: A user inputs a palindromic number
        When they input 111
        Then they should see a message that 111 is a palindrome

    Scenario: A user inputs a non-palindromic number
        When they input 112
        Then they should see a message that 112 reversed is 211

    Scenario: A user inputs a palindromic text only
        When they input saas
        Then they should see a message that saas is a palindrome

    Scenario: A user inputs a non-palindromic text only
        When they input mama
        Then they should see a message that mama reversed is amam

    Scenario: A user inputs a palindromic text with special characters
        When they input n@n
        Then they should see a message that n@n is a palindrome

    Scenario: A user inputs a non-palindromic text with special characters
        When they input m@m@
        Then they should see a message that m@m@ reversed is @m@m

    Scenario: A user inputs a palindromic text with white spaces
        When they input "n n"
        Then they should see a message that "n n" is a palindrome

    Scenario: A user inputs a non-palindromic text with white spaces
        When they input "m m "
        Then they should see a message that "m m " reversed is " m m"

    Scenario: A user inputs a palindromic text with numbers
        When they input n1n
        Then they should see a message that n1n is a palindrome

    Scenario: A user inputs a non-palindromic text with numbers
        When they input n1n1
        Then they should see a message that n1n1 reversed is 1n1n

     Scenario: A user inputs a single character
        When they input "a"
        Then they should see a message that "a" reversed is "a"
    
     Scenario: A user inputs a palindromic text with upper and lower case
        When they input "Anna"
        Then they should see a message that "Anna" reversed is "annA"
