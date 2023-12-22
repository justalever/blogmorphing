![Digging into Turbo 8's Morphing Feature in Ruby on Rails](https://f001.backblazeb2.com/file/webcrunch/turbo-morph-8.jpg)

# Digging into Turbo 8's Morphing Feature in Ruby on Rails

Inspired by Jorge Manrubia’s [talk from Railsworld](https://www.youtube.com/watch?v=m97UsXa6HFg&t=4s) I wanted to try out morphing which is coming to [Turbo 8](https://github.com/hotwired/turbo) very soon.

On October 9th, 2023 Jorge [published a blog post](https://dev.37signals.com/a-happier-happy-path-in-turbo-with-morphing/) that was a precursor to the talk. I recommend giving it a read.

The gist of the blog post and talk is that Turbo frames and streams are useful but often cumbersome to integrate since they are highly focused containers of logic.

They won’t be going away but might be more of a _special-use_ tool coming up with the introduction of morphing which could be a more convenient and useful “default” much like the standard full-page reloads of historical Rails apps.

### Discovering the problem

The Basecamp team has been working on integrating a calendar into their HEY product. In building the new feature, they quickly spotted the constraints of turbo frames and streams. Having to broadcast and update many items on a given page is problematic and overly complex, so they looked for a better approach, one much closer to the default Rails full-page reload conventions.

## What is morphing?

No, this doesn’t relate to Power Rangers, though one could wish!

Morphing is the process of merging one DOM into another without too many side effects. It’s not necessarily natural but the perception our eyes see makes it feel as such.

Morphing isn’t new, but it is to Turbo 8. The Basecamp team chose [idiomorph](https://github.com/bigskysoftware/idiomorph) as a library to help with the new features. It's a JavaScript library for morphing from one DOM tree to another.

**The TL;DR;**

Morphing provides smoother updates everywhere rather than selective updates like turbo streams and turbo frames.

## Putting it to practice

Visit [https://web-crunch.com/posts/turbo-morphing-ruby-on-rails](https://web-crunch.com/posts/turbo-morphing-ruby-on-rails) to read the entire post. You can also watch the video version [here](https://youtu.be/wURcezOECD0).
