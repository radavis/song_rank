require 'spec_helper'

describe Album do
  it { should belong_to :artist }
  it { should have_many :tracks }

  it { should have_valid(:name).when('Richard D. James Album', 'Hard Dream') }
  it { should_not have_valid(:name).when(nil, '') }
end
