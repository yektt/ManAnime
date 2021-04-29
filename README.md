# README

You can reach the application from [here](https://fast-mesa-32880.herokuapp.com/?locale=en).

Please run these commands before starting the application locally;
- for development mode:

      bundle install                  # install all required gems
      bundle exec rails db:migrate    # create the development and test databases
      bundle exec rails db:seed       # inserts the seed data to the development database
      bundle exec rails test          # runs all the unit tests for the application
      bundle exec rails server        # starts the rails server
<br>

- for production mode:

      RAILS_ENV=production rails db:migrate
      RAILS_ENV=production rails db:seed
      RAILS_ENV=production bundle exec rake assets:precompile
      ./run-production
<br>
Ruby version of the application: ruby 2.6.5p114
<br>
Name of the application: ManAnime
<br>
The application has been developed on Visual Studio Code. Tests and local runs have been made on Google Chrome.
<br><br>

## General information about the application

### What the application can do

- Users can sign up to the application and they will receive an e-mail when they do
- Users can be blocked from the application by admins, and they will receive an e-mail about why they have banned
- Users' block can removed by admins
- Users' role can changed from 'registered' to 'admin'
- Users can log in to the application if they're not banned from the application
- Users can log out from the application
- Users can edit their name and their avatar image
- Animes or mangas can be added to the application
- Animes or mangas can be added to the user's favorites list
- Animes and mangas can be edited by admins
- Animes and mangas can be added to the character's appearances list
- Characters can be added to the animes and mangas' characters list
- Characters can be added to the application
- Characters can be edited by admins
- Animes can be found in the application in lists as:
  - most recent five animes
  - most popular five animes
  - most popular and unfinished five animes
  - all animes
- Mangas can be found in the application in lists as:
  - most recent five mangas
  - most popular five mangas
  - most popular and unfinished five mangas
  - all mangas
- Users can search through animes and mangas' tags and names
- Users can make an advance search through;
  - season of the animes or mangas, 
  - animes and mangas that started after a specific date, 
  - by genre
- Comments can be added to the application
- Comments can be edited by the owner of the comment
- Comments can be deleted from the application by admins or the owner of the comment. If the deleted comment had any replies, the replies will be deleted as well.
- Comments can be reported by users but the comment's owner
- Comments can be upvoted or downvoted by users but the comment's owner. Although users can change the type of their voting, they can vote a comment once. They cannot take back their votes.
- Replies can be added to the comments. They have to be in one line.
- Replies can be deleted by the owner of the replies or admins
- Reviews can be added with or without rating to an anime or a manga
- Reviews can be deleted
- A user can write a review with a rating once for an anime or a manga. When the user deletes the review with a rating, the user will be able to rate the anime or the manga again.
- Reviews can be added more than once by the same user to the same anime or the manga if the review does not contain the rating.
- Genres can be added to the application
- Users can contact admins via the contact page of the application
- Users cannot reach some pages if they do not have the permission

### How you can use the application
For understanding how the application works for all users types, please visit [Help & Rules Page](https://fast-mesa-32880.herokuapp.com/en/help_and_rules) on the application. <br>
For understanding what admins can do and how they can do the things in the application, please visit [Help & Rules Page - Admins](https://fast-mesa-32880.herokuapp.com/en/admin_help_and_rules) on the application. (You need to log in as an admin to see this page.)<br>

## CSS 
<br>
Bootstrap rules have been used for styling the application in general. I wrote the CSS rules for three pages which are the home page, displaying character page and reports page.
<br>
I used grids in the following pages: home, anime list, manga list, show anime, show manga and show characters. I wrote the rules for grids in `_grid.scss`.<br>
<br>

## JAVASCRIPT
<br>

On the search page: 
  - For searching without submitting the search term. JS is listening to the search bar if there is any new input. If a user searches for something, the search term will be displayed in the search bar with the cursor at the end of it.
  - For displaying or hiding the Advanced Search part of the page.
  - For displaying or hiding the dropdown menu for seasonal search.
  - For after each search, the search bar will stay active. Also, the cursor will be at the end of the term in it.
<br>

On an anime or a manga page:
  - For switching between comments and review & rating tabs
  - For comments,
    - creating, deleting and editing asynchronously
    - listening to some of comment's icons which are 'reply', 'edit' and 'report'. If any of them has been clicked, JS takes action based on the clicked icon.
  - For review & ratings,
    - creating and deleting asynchronously
    - displaying new animes or mangas when a rating has been added or deleted
    - if a review with a rating has been deleted, the rating buttons will appear for that user again.
  - For creating and deleting replies asynchronously
<br>

On a character page:
  - Some characters might have distinct attributes. For displaying these attributes, I used JS. The attributes, if the character has any, are displayed on the right side of the character's image.
<br>

On a user page: 
  - When an admin clicks to the 'Block' button, for activating the modal to enter the reason for blocking that user, 
  - for switching between animes and mangas tabs of the user.

On the home page, for showing header's or footer's active elements in a different colour.<br>

After each text input mentioned above, JS has been used to clear text areas. 

## The differences between the proposal and the final product

### JS usage differences
- In my proposal, I said I will use JS to control if any checkboxes are clicked or not. I did not need to check it via JS because I was able to send checked checkboxes' values or ids as a parameter.

- While adding a new content page, I wanted to make a search through all characters via JS. I could not achieve this. Problems related to this section will be explained in the following sections.

- On the search page, the result is not changing with every character that has been entered in the search bar.<br>
When a user writes a term to the search bar, there is a waiting time to submit that term as a search term. After that time, it automatically searches with that term. If the user wants to extend or crop the term, they can do it in waiting duration or after the result has been displayed.

### Changes for pages
- The application has locales as Turkish and English. Language options are fully available for the header, the footer, the home page, the anime list and the manga list pages, and the search page.
- Home page has five elements per content type instead of six. If the elements have enough rating, their rating will be displayed as well.
- If a user has been banned from the application, instead of seeing the reason on the login page, they receive an e-mail that contains the reason.
  
### Changes for models
- I have added two attributes to content model as rating number and rating. In this way, finding all ratings about a content and calculating the average of the rating will not cost much. When a user deletes or creates a review with rating, rating number and rating are calculated accordingly and the new values are stored.

### Changes in Gems
I used all the Gems that I have mentioned in my proposal but Filterrific. It is for making a search and sorting the results. I wanted to do it in a different way.

## The problems that have occurred while building the application
These problems have been solved before submission.

- Implementing the svg icons to the DOM while creating a comment asynchronously: I made a typo while creating the SVG namespace. Instead of ```http://www.w3.org/2000/svg```, I have used ```http://www.w3.org/1999/svg``` which is not correct for the xlink.
  
- Configuration of the mailer smtp: <br>
    I had two different problems while configuring the smtp for the mailer:
    1. In development mode, I was able to send and receive e-mails without any problem. When I run the application in the production mode with the same configurations, I was able to send or receive e-mails. But, when I asked someone else to try (via Ngrok), they couldn't use the same features. I unlocked the captcha of the mail account and it was working for a while.
   
    2. The captcha solution was not a proper one because it's available only for ten minutes. I searched how to open the captcha longer than ten minutes and found a different solution. The solution was setting an 'application password'. I changed the account settings, activated two steps verification, and used the application password in the smtp configuration. But I couldn't hide it in the application.yml or secret.yml file. Still, it is not a security problem because nobody can use it to log in to the account.

- The application assigns default images and names for each user that has signed up. When the application has been uploaded to the Heroku with the seed data; I could open every page if they do not contain any images from the asset pipeline. Because I was not able to run ```figaro heroku:set -e production``` command and getting the following warnings:<br>
  on the terminal:
   ``` 
   ''[DEPRECATED] Bundler.with_clean_env has been deprecated in favor of Bundler.with_unbundled_env. If you instead want the environment before bundler was originally loaded, use Bundler.with_original_env (called at /Users/yektaturan/.rvm/gems/ruby-2.6.5/gems/figaro-1.2.0/lib/figaro/cli/task.rb:32)

    ▸    Usage: heroku config:set KEY1=VALUE1 \[KEY2=VALUE2 ...\]

    ▸    Must specify KEY and VALUE to set."
    ```
  When I tried to deploy the application to the Heroku again, I was getting these errors:<br>
  on the terminal:
  ```
  remote:  !
  remote:  !     Precompiling assets failed.
  remote:  !

  ```
  on the Heroku log:
  ```
  remote:        rake aborted!
  remote:        ArgumentError: Missing required arguments: aws_access_key_id, aws_secret_access_key

  ```
  When I checked Heroku database for the application, I was able to see that the images are in the asset pipeline, but somehow I was not able to use them. After trying many things, I solved this problem by adding the extensions of the images in the avatar_uploader file.

- I have made a migration with 'intege' instead of 'integer'. While migrating my database to the Heroku with ```heroku run rails db:migrate``` command, I was getting this error on the terminal:

  ```
  Caused by:

  PG::UndefinedObject: ERROR:  type "intege" does not exist 

  LINE 1: ALTER TABLE "contents" ADD "rating\_number" intege
  ```

  I deleted the migration file and created with 'integer' again but it did not work. I took back all the migrations up to the problematic migration, I deleted the migration and created a new one and I migrated all migrations again. After that, I reset the Heroku database with ```heroku pg:reset DATABASE_URL``` and it worked.

- In the search page, searching via search bar was working successfully but some results was missing. For example, if the I search 'na' in the search bar, the result does not contain 'Naruto'. 

  I realized that some results are missing because of the case sensitivity. In the content model, my related scopes was like this:
  ```
  scope :name_contains, -> (term) { where('name LIKE ?', "%#{term.downcase}%") }
  scope :tag_contains, -> (term) { where('tags LIKE ?', "%#{term.downcase}%") }
  ```
  
  I changed them like this:
  ```
  scope :name_contains, -> (term) { where('lower(name) ILIKE ?', "%#{term.downcase}%") }
  scope :tag_contains, -> (term) { where('lower(tags) ILIKE ?', "%#{term.downcase}%") }
  ```
  Although the solution above was working in production mode, it was not working in development mode. Because I used sqlite3 in development mode and ```ILIKE``` is not a valid command for sqlite3. So, I finalize my scopes like this to work in every mode:
  
  ```
  scope :name_contains, -> (term) { where('lower(name) LIKE ?', "%#{term.downcase}%") }
  scope :tag_contains, -> (term) { where('lower(tags) LIKE ?', "%#{term.downcase}%") }
  ```

## The difficulties that have occurred while building the application

- In adding a content page, admins have to add the character of the content before creating the content. <br>
For this part, I wanted to create a search bar to search the character for adding it to the content. But, I failed because I have learnt that I cannot use a form inside of another form. So, I decided to display all character alphabetically. <br>
When I was working on blocking a user and sending the user a mail with the blocking reason, I realized I can use modals to achieve character searching in the content adding page. <br> As future work, I would like to change the character part in adding a content page.

- When a tester wants to run the system tests of the application, the seed data has been loaded to the system, and then the test cases are running. However, if the tester wants to rerun the system test, there will be an error because it will try to load seed data again. It is possible to avoid this problem by using fixtures. As a future work for me, I will learn how to use fixtures. I will add them to the application test cases and avoid using the seed data for test cases.

## The future perspectives
In this part, I will explain the future work that can be done to improve the application.

- In any animes or mangas page, there is a big gap between its description and its title. It will be a future work for me to improve the view of the page.

- When a banned users is unblocked by admins, they might receive an e-mail about it.

- It is possible to adjust the size of the character's image and improve the way to display the character's distinct attributes.

- It will be a future work to create another role as 'moderator'. Moderator will have nearly all of admins' powers on the application. But, they will not be able to make someone admin or moderator and block or unblock someone.
