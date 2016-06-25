My first sinatra application was a simple blog app. I found it somewhat challenging, but thought that I could revisit the project after learning some rails. After learning some rails I came up with some better ideas of what to build and decided to create a new application. I also figured it would be pretty cool to use bootstrap so that I would have a template to work off of. Besides Bootstrap helped me come up with the idea in the first place.

First thing I did was take some notes of what I would need:

Aplication: NET-i

Requirements:

Client-
has
  - name
has_many
  - sites
has_many through sites
  - contacts
  have a
    name
    number
  - assets
  