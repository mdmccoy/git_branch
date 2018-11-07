require "git_branch/version"

module GitBranch
  class Engine < ::Rails::Engine; end

  def self.branch
    `git rev-parse --abbrev-ref HEAD`
  end
end
