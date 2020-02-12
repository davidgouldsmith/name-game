Feature: Progress Counter


    # PATASOT-57: Progress counter - Incorrect Selection
    Scenario: User is already playing Name Game, did not have a previous streak
        Given I am playing the Name Game
        And I did NOT have a previous streak
        When I select an incorrect photo
        Then the progress counter 'tries' should increase by +1
        And 'correct' should not change
        And the streak should remain at zero.
