# vimwiki-server
Sinatra server that creates a web server from a vimwiki directory

At less than 10 LOC I'm nearly ashamed to publish this, but:
* Nothing else does this
* There are a lot of less-good ways of doing this, and I think this is the best.

Uses the default $HOME/vimwiki directory 

TODO List:
* add Gemfile for bundler?
* add command line parameter for non-default vimwiki dir
* Customizable layouts from http://markdowncss.github.io/?
* investigate rendering vimwiki formatted files as well as markdown
