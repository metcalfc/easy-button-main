# docker run -e GITHUB_TOKEN='XXXYYYZZZ1234' -e GITHUB_REPOSITORY='org/repo' metcalfc/easy-button-main:0.0.1

require 'octokit'

c = Octokit::Client.new(:access_token => ENV['GITHUB_TOKEN'], :auto_paginate => true)
c.update_repository(ENV['GITHUB_REPOSITORY'], {:default_branch => 'main'} )
