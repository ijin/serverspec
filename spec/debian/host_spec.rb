require 'spec_helper'

include Serverspec::Helper::Debian

describe 'Serverspec host matchers of Debian family' do
  it_behaves_like 'support host be_reachable matcher', '127.0.0.1'
  it_behaves_like 'support host be_reachable with matcher', '127.0.0.1'

  it_behaves_like 'support host be_resolvable matcher', 'localhost'
  it_behaves_like 'support host be_resolvable by matcher', 'localhost', 'hosts'
  it_behaves_like 'support host be_resolvable by matcher', 'localhost', 'dns'
end
