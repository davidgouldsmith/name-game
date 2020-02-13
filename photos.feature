Feature: Employee Photos

Feature Description

    # PATASOT-42: Numbered index in corner of employee photos
        Scenario: Numbered index in corner of employee photos
            Given I am playing the Name Game
             When the employee photos are displayed
             Then I should see each employee photo labeled with a number

    # PATASOT-41: Photos and prompt refresh - Incorrect Selection
        Scenario: Photos and prompt refresh - Incorrect Selection
            Given I am playing the NameGame
             When I select the incorrect photo
             Then the visual prompts indicating failure should appear
              And I should see the same set of photos and the same prompt

    # PATASOT-40: Photos and prompt refresh - Correct Selection
        Scenario: Photos and prompt refresh - Correct Selection
            Given I am playing the NameGame
             When I select the correct WT employee photo
             Then the visual prompts indicating success should appear
              And I should see a new prompt with new photos

     # PATASOT-39: Employee name displayed on selected photo
        Scenario: Employee name displayed on selected photo
            Given I am on the Name Game home screen
             When I select any option
             Then I should see the name of the employee I selected appear

    # PATASOT-35: User feedback - User photo turns green for correct guess 
        Scenario: User feedback - User photo turns green for correct guess
            Given I am on the Name Game home screen
             When I select a Correct option
             Then I should see the photo turn green

    # PATASOT-34: User feedback - User sees photo turn red for incorrect guess
        Scenario: User feedback - User sees photo turn red for incorrect guess
            Given I am on the Name Game home screen
             When I select Incorrect option
             Then I should see the photo turn Red
