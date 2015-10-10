require 'spec_helper'

describe Nq do
  it 'has a version number' do
    expect(Nq::VERSION).not_to be nil
  end

  it 'can be configured' do
    expect {
      Nq.configure do |nq|
        nq.region = 'us-west-2'
        nq.credentials = {foo: :faw}
      end
    }.to_not raise_error
  end

  it 'has a region' do
    Nq.configure do |nq|
      nq.region = 'us-west-2'
    end

    expect(Nq.region).to eq 'us-west-2'
  end

  it 'can run' do
    nq = Nq::CLI.new
    nq.run
  end
end
