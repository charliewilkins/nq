
require "nq/version"
require "nq/cli"

module Nq
  def self.configure
    yield self
  end

  def self.region=(v)
    @region = v
  end

  def self.region
    @region
  end

  def self.credentials=(v)
    @credentials = v
  end

  def self.credentials
    @credentials
  end
end

