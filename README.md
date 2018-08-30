WDI-PVD-03 CAPSTONE PROJECT - BACKEND CLIENT THE JOKE BOOK SITE
==========================================================

FRONTEND REPO LINK:
-------------------
https://github.com/CoreyJNash/Jokebook-client

LINK TO DEPLOYED BACK END:
-------------------------
https://glacial-shelf-46176.herokuapp.com/

LINK TO DEPLOYED FRONTEND:
--------------------------
https://coreyjnash.github.io/Jokebook-client/

REPO SETUP INSTRUCTIONS:
------------------------
Run: ```Bundle Install```
This installed any dependancies that were needed to run back end servers. 

OVERVIEW:
---------

For my capstone project I created a full stack web app that allows a user to log in and see Jokes writen by authenticated users.  It will also allow users to sign in to write and store jokes in the Joke book.  This Repo is for the back end API which was writen useing Ruby on Rails.  

USER STORIES:
----------------
- A user can sign up and sign into the site as an authenticated user.
- A signed in user can create a new Joke in the Joke Book 
- A signed in user can update their Jokes by putting in the ID of the Joke they wish to change or update.
- A user can see all the Jokes in the Joke book
- A signed in user can delete a Joke in the catalog

PROJECT REQUIREMENTS:
----------------------
- site must be deployed to Heroku
- useres must be able to sign in/out/up and change passwood
- users must be able to Create/view/update/delete jokes

TECH USED:
----------
- Ruby on Rails
- Heroku 
- Github 


ROUTS AND METHODS:
-------------------
*Summary:* JOKES:

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>GET</td>
<td></td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>jokes found</strong></td>
</tr>
<tr>
  <td colspan="3">
  The default is to retrieve all jokes..
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/jokes`</td>
<td>n/a</td>
<td>201, Created</td>
<td><strong>joke created</strong></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/jokes/:id`</td>
<td><strong>jokes delta</strong></td>
<td>200, OK</td>
<td><strong>joke updated</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
</table>

## User Actions

*Summary:*

<table>
<tr>
  <th colspan="4">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Headers</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>POST</td>
<td>`/sign-up`</td>
<td><strong>credentials</strong></td>
<td>empty</td>
<td>201, Created</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="4"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/sign-in`</td>
<td><strong>credentials</strong></td>
<td>empty</td>
<td>200 OK</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="4"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>DELETE</td>
<td>`/sign-out`</td>
<td>empty</td>
<td><strong>token</strong></td>
<td>201 Created</td>
<td>empty</td>
</tr>
<tr>
  <td colspan="4"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/change-password`</td>
<td><strong>passwords</strong></td>
<td><strong>token</strong></td>
<td>204 No Content</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="4"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>

## API End Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/jokes`               | `jokes#index`     |
| POST   | `/jokes`               | `jokes#create`    |
| PATCH  | `/jokes/:id`           | `jokes#update`    |
| DELETE | `/jokes/:id`           | `jokes#delete`    |


WHATS LEFT:
-----------
I would like to add a comment section to the jokes log so people could comment on each joke.  I would also like a thumbs up or a like button as well. 

WIREFRAME:
----------
![ERD](https://i.imgur.com/odIAJg5.jpg)
