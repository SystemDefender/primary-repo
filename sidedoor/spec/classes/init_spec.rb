require 'spec_helper'
describe 'sidedoor' do

  context 'with defaults for all parameters' do
    it { should contain_class('sidedoor') }
  end
end
