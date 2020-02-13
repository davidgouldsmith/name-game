Feature: Progress Counter

    # PATASOT-57: Progress counter - Incorrect Selection
        Scenario: User is already playing Name Game, did not have a previous streak
            Given I am playing the Name Game
              And I did NOT have a previous streak
             When I select an incorrect photo
             Then the progress counter 'tries' should increase by +1
              And 'correct' should not change
              And the streak should remain at zero.

    # PATASOT-25: Progress counter displayed on screen
        Scenario: Progress counter displayed on screen
            Given  I open the NameGame
             When the screen is displayed
             Then  I should see a progress counter
              And  the progress counter should display; tries, correct, and streak

    # PATASOT-56: Progress counter changes - Incorrect Selection
        Scenario: User is already playing Name Game, had a previous streak
            Given I am playing the Name Game
              And I had a previous streak
             When I select an incorrect photo
             Then the progress counter 'tries' should increase by +1
              And 'correct' should not change
              And streak should return to zero.

    # PATASOT-55: Progress counter changes - Correct Selection
        Scenario: User is already playing Name Game
            Given I am playing the Name Game
             When I select the correct photo
             Then the progress counter 'tries' should increase by +1
              And 'correct' should increase by +1
              And streak should increase by +1

    # PATASOT-54 - Progress counter changes - Correct Selection
        Scenario: User starts new game
            Given I start the Name Game
             When I select the correct photo
             Then the progress counter 'tries' should increase from 0 by +1
              And the progress counter 'streak' should increase from 0 by +1
              And the progress counter 'correct' should increase from 0 by +1

    # PATASOT-31: Progress counter - User starts NameGame
        Scenario: Progress counter - User starts NameGame
            Given I start the Name Game
             When I see the initial set of employees
             Then I should see the “tries/correct/streak” counte
             
    # PATASOT-28: Display streak counter on screen
        Scenario: Display streak counter on screen
            Given I start the Name Game
             When I see the initial progress counter
             Then I should see a “streak” counter start at 0

    # PATASOT-27: Number of correct attempts displayed on screen
        Scenario: Number of correct attempts displayed on screen
            Given I start the Name Game
             When I see the initial set of employees
             Then I should see a “correct” counter start at 0

    # PATASOT-26: Number of tries displayed on screen
        Scenario: Number of tries displayed on screen
            Given I start the Name Game
             When I am shown the initial set of employees
             Then I should see the “tries” counter start at 0
