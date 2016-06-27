My first sinatra application was a simple blog app. I found it somewhat challenging, but thought that I could revisit the project after learning some rails. After learning some rails I came up with some better ideas of what to build and decided to create a new application. I also figured it would be pretty cool to use bootstrap so that I would have a template to work off of. Besides Bootstrap helped me come up with the idea in the first place.

First thing I did was take some notes of what I would need:

Aplication: NET-i

Requirements:

Client-
has
  - name
has_many
  - sites
    address
has_many through sites
  - contacts
    name
    number
  - assets
    IP

There will be a form for client to modify their information or add new info

There will be a dashboard that will show top attacks

<!-- Starting the development -->

I looked at older sinatra labs to get an idea of what exactly I needed for the initial set up.

- created environment
- and created first migration

After this I realized why not add the bootstrap to the app so I can start off with the template. I could use this template as a layout for my other pages

I created a task list in order to tackle them one by one and I started noticing other things I would need. For instance I wanted there to be user access to the application so I looked for a way to add roles to users for sinatra. After some research, I found several gems I could use and Warden was one of them. However, I had a difficult time figuring out how to implement Warden so I was lucky enough to find "authlane".


