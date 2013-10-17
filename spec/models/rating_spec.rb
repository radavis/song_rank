require 'spec_helper'

describe Rating do
  it { should belong_to :track }

  it { should have_valid(:points).when(0, 1, 2, 3, 4, 5) }
  it { should_not have_valid(:points).when(-1, 6, 3.3) }
end
