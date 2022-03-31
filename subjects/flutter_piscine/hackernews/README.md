# hackernews

### Introduction

Create your own hackernews app! - https://news.ycombinator.com/

Hacker News is a social news website, which mainly focusses on Computer Science and Entrepreneurship. You will make a client consisting of all the main features of the website.

### Objective

Your objective for this raid is to create an UI for [HackerNewsAPI](https://github.com/HackerNews/API).

Your app should have following functionality:

- Show list of all fetched posts on main screen:
  - Each Post has an Upvote option to vote the post
  - Each Post displays Total Votes and Total Comments on them
  - Displays the Username of the Creator
  - Displays the Submission Time
  - Open link in a webview on post tap

On the website, we can Post, Comment, or reply **only when we have an account**.

- Registration Page using firebase
- Login page using firebase

When user logged in:

- Create new post, it should have:
  - Title, URL and the Description.
- Delete post
- Make up-vote/down-vote
  