# Postgresql Intro

These slides cover the introduction to PostgreSQL for understanding:

- Database basics
- SQL Cheatsheet
- PostgreSQL console
- Ruby scripting with PG
- [Lecture Slides](https://docs.google.com/presentation/d/1TAUwgcll1Pmk04O5-JVkySVRZiI9kJ2kEyNqVn_F-AI/edit?usp=sharing)


# Lab Data Modeling

For this lab we will, as a group, model some objects together! Things to consider:

* What is data modeling?
* Who uses it?
* Why is it important?
* How to approach it?
* What does a good model look like?


## What is data modeling?

In the world of backend development, data modeling is the process of creating models - physical, conceptual and logical - based on objects, processes or data sets. It's a key
feature of application design.

- Physical Modeling: Creating tables in a database
- Conceptual Modeling: Modeling ideas or processes as they relate to a system
- Logical Modeling: The attributes, restrictions and relations for all data (logical modeling cares about the logic of the system data)

## Who uses it?

Everyone uses it: developers, designers, users, managers ...everyone in your company is a stakeholder in strong data models. Lots of planning should go into models to 
ensure they line up with business needs.

## Why is it important?

Good model design is the backbone of your application, especially if you're using a database. Knowing how to safely store and handle data for your application can make or
break it's functionality.


# Practice: Star Wars Lab

We're going to model **Planets** from the Star Wars universe using the [swapi.co](swapi.co)! Download the exercises to get started.
Before you get started, read the [API documentation](swapi.co).

Data sample:
```
{
    "climate": "Arid",
    "diameter": "10465",
    "gravity": "1 standard",
    "name": "Tatooine",
    "orbital_period": "304",
    "population": "200000",
    "rotation_period": "23",
    "surface_water": "1",
    "terrain": "Dessert",
    "url": "https://swapi.co/api/planets/1/"
}
```

#### Requirements:

Your task is the write two scripts: one that connects to your database and another that creates a model for planets. The model
should represent the data returned from the api. You must add all attributes **except residents**. We do not care about the
residents, but the other fields should all be represented on the class.

- Create a class named `Planet`
- Give it all the same attributes that the api provides **except residents. Skip the residents field.**
- Your class should have a `save()` method that stores instances of `Planet` in the database.
- Complete `exercises/db.rb` to methods for connecting and interacting with the database.


#### Resources
- [PostgreSQL Data Types](http://www.postgresqltutorial.com/postgresql-data-types/)
- [Star Wars API](https://swapi.co/documentation#intro)
- [Ruby Classes for Beginners](http://ruby-for-beginners.rubymonstas.org/writing_classes.html)

