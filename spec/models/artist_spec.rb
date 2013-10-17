require 'spec_helper'

describe Artist do
  it { should have_many :albums }

  it { should have_valid(:name).when('Nirvana', 'Pearl Jam') }
  it { should_not have_valid(:name).when(nil, '') }
end
