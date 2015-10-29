# Chat App

## Description
A chat application to keep in touch with my nieces.

## Things to do.

## Version 1 - Just For Me To Use With Little Girls.

### Major

- Make the chat window start from the bottom and update to the bottom. 
	- Too hard, just reversed comments to appear from the top for now
	- The below chap figured it out though.
		- JQuery: http://stackoverflow.com/questions/9659343/how-can-i-make-a-html-scrollbar-start-at-the-bottom
		- JavaScript: http://stackoverflow.com/questions/7063627/force-scrollbar-to-bottom
- Notifications
	- Check Notification API in DevDocs.

### Minor

- Add persistence to friend comment styling.
- Test the models. Make they'll do what I think they'll do.
- Options at the top need to be hidden if no one is logged in.
- Make name entry case insensitive.
- Add dashboard to user dropdown.
- Add placeholder on jumbotron landing at entry.
- Make the style attributes appear what they are in the list.
- Add sent at to comments.
- Have the new comments entry field preserved if page navigated away.

## Version 2 - Moving Towards Full Production.

### Major

- Have a params code to get to chat 'entrance'.
- Localise a group of friends to a user.

### Minor

- Be able to delete friends. (but what about the comments that they have made?)
- Only show the last say 20 comments.
- When a user signs up for the first time...
	- Have them redirected to the dash.
	- Have their first friend auto generated as themselves.
- Friends group needs a unique validation per user.

### Very Minor

- Find a way to tile the frinds in the Dash Board so they appear in two columns.
- Find a better way to style the chat UI so inputs looks like FB or WhatsApp.

## Issues

### Major

- I can't put code in a tag, call a method in the controller and expect it to work.
- Models, can't creat new object with the has_one and belongs to relationship.
- Volt editable text doesn't work past Volt 0.9.4
- Submit comment method not able to be fully tested because I cant set test params.


### Minor

- Glyphicons don't work.
- Tabed styels it chat room aren't showing their current values. See if Field:Radio works on other app.