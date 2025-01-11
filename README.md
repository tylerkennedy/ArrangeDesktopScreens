# ArrangeDesktopScreens

I created this tool as an easy way to arrange my desktop monitor screens.

## Problem

I have a desktop monitor that I connect to my Macbook. I usually set my Macbook on my desk below the monitor so the screens are stacked on top of each other vertically.

Like this:

<img height="250" src="https://github.com/user-attachments/assets/fcc7cadd-610b-4713-b4ef-1364a8ca938c">

But, sometimes I arrange my monitors using a laptop stand where my Macbook is to the left of my monitor so they are side by side. 

Like this:

<img width="250" src="https://github.com/user-attachments/assets/cd055252-9768-434a-bf82-2bdbfed51eb2">

When I wanted to change how they were arranged, I needed to go into the settings on my Macbook, and rearange my screens so that when I move the mouse off the screen, it goes to the other screens where I would naturally expect it to (left to right for the horizontal stacking and up to down for the vertical stacking).

## Solution

To make it easy to change the arrangement of my screens, I created this Mac menu bar app. I created the two configurations for the arrangements that I use and now when I want to change them, I click on the app icon in the menu bar and select the arrangement I want. The settings are applied instantly for my screens and the new screen arrangement takes effect.

<img width="104" alt="Screenshot 2024-12-28 at 8 43 10 PM" src="https://github.com/user-attachments/assets/da154a31-da7b-4f25-a30c-4e552620eea2" />

## How It Works

I first started out by looking if someone has already built an app that does this. I found a few Mac apps designed for configuring displays but they were all overkill for what I wanted to do and included lots of extra features I didn't need. 

I knew this was possible because there were apps out there that could control your desktop screen arrangement, so I searched for a guide on how to do this programatically. I found [this guide](https://martingarnett.com/2020/create-an-app-to-auto-arrange-your-screens-on-a-mac/) that explains how you can create an AppleScript that rearranges your desktop screens. I started there and it worked, but I found using an AppleScript from my desktop to be clunky and not the cleanest user interface. 

The guide uses this [command line utility](https://github.com/jakehilborn/displayplacer) that allows you to run a single bash command to rearrange your desktop screens. Once I had created the two underlying commands that rearranged my desktop into my two configurations, I used ChatGPT to build a Mac menu bar app in Swift UI that would show two buttons in a dropdown. When I clicked the buttons for my arrangement, it would run the bash command to apply the new desktop arrangement.
