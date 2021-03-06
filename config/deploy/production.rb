# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{jmiller@131.230.19.25}
role :web, %w{jmiller@131.230.19.25}
role :db,  %w{jmiller@131.230.19.25}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server '131.230.19.25', user: 'jmiller', roles: %w{web app}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
 # set :ssh_options, {
 #   keys: %w(/home/jmiller/.ssh/id_rsa),
 #   forward_agent: false,
 #   auth_methods: %w(password)
 # }

set :password, ask('Server Password', nil)
server '131.230.19.25', user: 'jmiller', port: 22, password: fetch(:password), roles: %w{web app db}

# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options
