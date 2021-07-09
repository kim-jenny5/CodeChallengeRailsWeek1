# README

## Make a Party model with the following attributes:
   - name
   - date
   - category
   - supplies
   - budget
   - private (boolean)
- Make an index view to display all party names and dates(make sure to add your route)
- Add Party seed data
- Order this list by date
- Make a show view to show one particular party
- Add links to the index view to see 1 party
- Add a link to the layout to view all parties
Part 2 Instructions
Add routes for the new and create actions
Create a form for making new Parties. There should be fields for the following attributes:
name
date
budget
private (boolean)
Use strong params in the controller and create a new Party when the form is submitted.
Redirect users to the party show page after a new party is created
Add a form to edit and update a party.

Add Validations:
   - every field has to be filled out
   - a party's date has to be unique
   - a party's budget has to be a number
   - a party's budget has to be at least $100 and no more than $10,000
   - make a custom validator for parties, every party's name has to start with "The" ex. "The Best Party Ever" or "The Halloween Party"
- Create a Category model that just has a name attribute. Each party should belong to a category
- Create a Supply model - each supply will have a name attribute. A party can have many supplies and each supply should be able to be used by many parties.
