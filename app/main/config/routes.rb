# See https://github.com/voltrb/volt#routes for more info on routes

client '/about', controller: 'main', action: 'about'
client '/{{ name }}', controller: 'chats', action: 'index'
client '/dashboard', controller: 'dashboards', action: 'index'
client '/little_girl_chat', controller: 'chats', action: 'entry'

# Routes for login and signup, provided by user_templates component gem
client '/signup', component: 'user_templates', controller: 'signup'
client '/login', component: 'user_templates', controller: 'login', action: 'index'
client '/password_reset', component: 'user_templates', controller: 'password_reset', action: 'index'
client '/forgot', component: 'user_templates', controller: 'login', action: 'forgot'
client '/account', component: 'user_templates', controller: 'account', action: 'index'

# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
