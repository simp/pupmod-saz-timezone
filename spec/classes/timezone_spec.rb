require 'spec_helper'

describe 'timezone' do
  ['Debian','RedHat','Gentoo','FreeBSD'].each do |osfamily|
    describe "on supported osfamily: #{osfamily}" do
      let(:title) { 'EST' }
      include_examples osfamily
    end
  end
end
