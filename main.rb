# docker run -e GITHUB_TOKEN='XXXYYYZZZ1234' -e GITHUB_REPOSITORY='org/repo' metcalfc/easy-button-main:0.0.1

require 'octokit'

GITHUB_TOKEN=ENV['GITHUB_TOKEN']
GITHUB_REPOSITORY=ENV['GITHUB_REPOSITORY']

c = Octokit::Client.new(:access_token => GITHUB_TOKEN, :auto_paginate => true)

if c.user()
    puts "Hello %s" % c.user().login
end

if c.repository?(GITHUB_REPOSITORY)
    c.update_repository(GITHUB_REPOSITORY, {:default_branch => 'main'} )
else
    puts "No such repository: %s" % GITHUB_REPOSITORY
end
