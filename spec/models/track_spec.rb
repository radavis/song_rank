require 'spec_helper'

describe Track do
  it { should belong_to :album }

  it { should have_valid(:name).when('Bombtrack', 'Cornish Acid') }
  it { should_not have_valid(:name).when(nil, '') }
end
