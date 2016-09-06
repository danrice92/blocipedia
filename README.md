## Blocipedia: a wiki collaboration tool

  ![Blocipedia pic](https://github.com/danrice92/blocipedia/blob/master/lib/assets/blocipedia.png)
  
  Blocipedia is the first project I completed after the Foundation work at Bloc.
  
  In many ways, it has a layout fairly similar to my Bloccit project, but with a few changes to allow for collaboration on wikis, as well as both standard and premium users.
  
  Some things I learned while working on the Blocipedia project include how to:
  
  * incorporate the Devise user gem into a Rails project to require users to verify their email when creating an account
  * incorporate a Stripe account for processing payment information to upgrade from a standard to premium user
  * build rules that allow only certain users to view and edit certain wikis
  * utilize the Redcarpet gem so wikis on the site parse Markdown syntax.
  * handle pull requests between Github users
  

  After the pull request requirements of the project and a bit of fiddling with making new branches, pretty much all of the work is in the master branch because I was the only one working on Blocipedia.
  
  Blocipedia has the abilities to:
  
  * create a new standard user account with an email address and password
  * edit existing, public wikis as a standard user, as well as private wikis you are a collaborator on
  * upgrade to a premium user account (through Stripe's test version, so it doesn't actually charge $15 to your credit card)
  * create new public and private wikis, delete public and private wikis you created, and add collaborators via their email address to private wikis you created as a premium user
  * downgrade back from a premium to a standard user, which makes all of your private wikis become public
  * delete your user account, which deletes any wikis you created
  * create, edit, or delete any wiki as an admin (if you're me, in other words)
  * do all of this creating, editing, and deleting of Wikis with Markdown, plus a few tricks like footnotes that I added on with the Redcarpet gem
   

  Pretty cool, huh? I'm pretty happy with it for a first outing, myself.
  
  The app is now live on [Heroku!](http://dan-rice-blocipedia.herokuapp.com), and you can read more about it at my [blog](http://danrice.me).
  
  Made with my mentor at [Bloc](http://bloc.io).