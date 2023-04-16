***Settings***
Library     AppiumLibrary

Resource    help.robot 
Resource    myGargen.robot
Resource    plantList.robot
Resource    seedDetails.robot

***Variables***

***Test Cases***
Open Flower App
    Capalibities

Validate Screen My Garden
    Validate My Garden

Validate Screen Plant List
    Validate Plant List
    Scroll Down
    Validate Plant List ScrollOne
    Scroll Down
    Validate Plant List ScrollTwo
    Sleep   2

Add Plant To My Garden
    Scroll Up
    Add Plant
    Validate Seed Details Screen
    Acquire Seed

    Capture Page Screenshot
    Close Application