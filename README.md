# Phase 3 Project Guidelines

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

This application is meant to enable users to find apartment around their location and make a booking and review. it makes use of a react js frontend to interact with a sinatra API

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Description
- this Uses Active Record to interact with a database.
- the backend has five models owner, users, reviews, rentals and bookings
- the API Sets up the following CRUD operations
  - read actions for all models
  - full CRUD capability for one of the models: 
  uses a form to implement patch and post request 
  pre-filled with existing values for the object. On submission of 
## the React Frontend
- a separate React frontend application that interacts with the API to
  perform CRUD actions.
- some of the functionalities of the react is state management using the react hooks. You should be updating state using a
 



## Getting Started

### Backend Setup
i used the startup code from canvas to get started

**Important**: this is the live link for the frontend published with gh pages

[gh pages link]: https://lik10280.github.io/find-apartment-frontend/



### Frontend Setup
the frontend is set up on a seperate repository the link below

 **Important**: https://github.com/Lik10280/find-apartment-frontend 



### Fetch Example

i hosted my react app locally on port 4567

```js
fetch("http://localhost:4567/rentals")
  .then((r) => r.json())
  .then((data) => console.log(data));
```


