# dnd_character_sheet_app

A character sheet app for Dungeons & Dragons Fifth Edition players.

## How To Use

1. Run main.dart in an Android/iOS Emulator.
2. Tap/click buttons to navigate app.
  - First page is the "Character List", where you can choose to load an existing character sheet by pressing their respective button, or start to create a new character by pressing the "Create Character" button
  - ***the "+" and "-" buttons next to resources increment and decrement the resource by one***
  - the Create Character page has many options for ***character creation***, including the ***"Custom" option*** which allows for custom input.
    - NOTE: Each text field in this page must be submitted, not just changed
  - The Character Sheet page can be scrolled up and down, as well as swiped left and right to navigate

## 11/16/23 - Deliverable 3 Progress

- Character, CharacterOption, and Feature models developed
  - Character tracks the many aspects of a character needed by the character sheet view, including many Features and CharacterOptions
  - CharacterOption represents the class, subclass, race, and background of a character, and contains a name, a list of Features, a list of skill proficiencies, and a list of other proficiencies
  - Feature contains a name and a description, and represents the more advanced abilities of a character

- character_creator_view_model and character_creator_view initialized and navigable.
  - "Under Development" text and navigation appBar are present

- character_sheet_view_model and character_sheet_view created and started.
  - View model has
    -  a hard coded character model in its constructor
    -  resource management methods
    -  getters for the model to link data to the view
    -  toString methods for feature lists and proficiency lists
  - View has
    - a built scaffold of an initial character sheet screen with data binding to the character model constructed in the view model
    - ***"+" and "-" buttons next to health to make steps toward achieving the task of resource management***
    - an appBar and back button
   
- character_list_view_model and character_list_view created and started.
  - View has
    - a title and two buttons
      - "Coddrin Thunderslayer..." leads to the character_sheet_view of a character named Coddrin Thunderslayer
      - "Create Character" leads to the character_creator_view
     
- Miscellaneous development progress:
  - router.dart implemented for navigation between views
  - themeData started with FilledButton, text, and background styling 

## 12/13/23 - Deliverable 4 Write Up

- General Lessons Learned
  - Be adaptable: the planning process is great for setting expectations and goals, but one can't possibly anticipate every challenge.
  - Communication/collaboration: it's important to discuss responsibilities and expectations in order to effectively complete a group task.
  - Time management: as with any large time-consuming project, managing time is important for meeting goals and expectations.

- Design Changes/Lessons Learned
  - Our Wireframe had many layers on top of each other, as well as nested widgets that are not structured how they are in the final app. This change is due to the structure of many Flutter widgets as sequenced children.
    - Lesson Learned: Throughout the process, we became much more familiar with nesting widgets. Due to our workarounds to the initial challenge, however, we found that stacking things on top of each other isn't always the most appealing option.
  - Our Character Creator is much more concise than initially planned. This makes the character creation process much faster for more experienced players, and new players will still be able to access the information they need from the Sheet view.
    - Lesson Learned: Unnecessary complexity can be unnappealing, and having to navigate multiple pages to fill out a form can prove to be unnecessaily complex.
  - Rather than having only the Character model, we also added CharacterOption, Feature, and Spell due to the lack of tuple support in Flutter.
    - Lesson Learned: This change ended up helping a lot with the custom character option task, so the abstraction aspect of this object oriented programming approach proved very helpful.
  - The CharacterListViewModel is connected to much more than just the CharacterListView. This came from the necessitation of accessing the characters in the character list throughout the many pages of the app.
    - Lesson Learned: Along with the last lesson, it helps to be adaptable to difficulty that wasn't anticipated in the planning process.
