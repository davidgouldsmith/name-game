Feature: Feature name

Feature Description

    # PATASOT-25: Progress counter displayed on screen
        Scenario: Progress counter displayed on screen
            Given  I open the NameGame
             When the screen is displayed
             Then  I should see a progress counter
              And  the progress counter should display; tries, correct, and streak

    # PATSOT-24: Title displayed on screen
        Scenario: Title displayed on screen
            Given  I open the Name Game
             When the screen is displayed
             Then I should see the title of the NameGame - ‘Name Game’

    # PATASOT-23: Question prompt displayed on screen
        Scenario: Question prompt displayed on screen
            Given I open the Name Game
             When the screen is displayed
             Then I should see a prompt ‘who is [WillowTree employee name]’

    # PATASOT-12: Employee photos displayed on screen 
        Scenario: Employee photos displayed on screen
            Given I open the Name Game
             When the initial screen shows
             Then I should see 3 WT employee photos

             
