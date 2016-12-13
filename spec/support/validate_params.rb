shared_examples_for 'validate parameters' do
  [
    'autoupgrade',
  ].each do |param|
    context "with #{param} => 'foo'" do
      let(:facts) {{
        :os => {
          :name => 'Debian',
          :family => 'Debian',
          :release => { :major => 8, :full => 8 }
        }
      }}
      let(:params) {{ param.to_sym => 'foo' }}
      it { expect { is_expected.to create_class('timezone') }.to raise_error(Puppet::Error, /expects a Boolean value/) }
    end
  end
end
