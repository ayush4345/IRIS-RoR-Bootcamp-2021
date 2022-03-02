# Week 4 Task
This week's task is to create a library management system. The basic app will be provided to you, and you will need to add code into it.
## App Description
- A Book has a title and abstract
- An Author  has a first name,  a last name, and a phone number
- A Publication has a name
- A Book can have many authors
- A Book cannot exist without a publication
- An Author can author many books
- A Publication can be shared by many books
- No two books should have the same title
- Every Author's phone number must be valid (i.e, it should be of 10 digits length)
- The Author model must have a ```full_name``` instance method, that gives the full name of the author
- The Book model must have a ```citation_info``` instance method that returns a sentence containing the 'title', 'authors', and 'info' of the book.
- The Publication model must have an ```book_count``` method that returns the total number of books that have been published

To complete this task, you can follow these steps:
1. Design the schema for above scenario.
2. Identify associations between different tables.
3. Write migrations.
4. Create database and migrate.
5. Define associations in Active Record models.
6. Define validations in Active Record models.

## Submitting the tasks
Your assignment will be judged through Github Actions, and so your app will have to match a few conditions
- Make sure your branch is of the format ```week4_<YOUR_NAME>```
- Your model routes must be as follows (you can check them out by using ```rails routes``` command:
  - The ```/``` route must render a list of all books with title, abstract, publication, authors and citation information
  - The ```/:id``` route, which takes in an ```id``` param in the query string, must show the information of a book
  - The ```/authors``` route must display a list of all authors, and the number of books authored by each author
  - The ```/authors/:id``` route must show citation information for all the books of an author
  - The ```/publications``` route must render a list of all the publications and the count of books that are published under this publication
  - The ```/publications/:id``` route must show citation information for all the books of the publication
- Controllers must have fixed names. The names of the required controllers can be inferred from the tests in the test directory
- Note that you can create database records through the console, and there is no need to submit them through a form view. This assignment is only to test models
- After completing the task, create a Pull Request to the ```week4_assignment``` branch

## Running Tests Locally
You can ensure that your rails app passes all tests, by going to the ```root``` directory of your app, and then running the following command

```bash
rspec
```
## Doubts
Feel free to ask doubts on the [#doubts](https://teams.microsoft.com/l/channel/19%3a6e5ce5031c594c34927026726a750f12%40thread.tacv2/%255BRuby%2520on%2520Rails%255D%2520Doubts?groupId=ebcdbf1c-6b25-48f4-9dfc-9f5e3666cc00&tenantId=36e917dc-1abe-43f4-b189-f92196a6b4ad) channel in Teams
