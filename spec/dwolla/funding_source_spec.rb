describe "Funding sources" do
  let(:oauth_token) { 'valid_token' }
  
  describe "Getting a list of funding sources" do
    before :each do
      user = Dwolla::User.me(oauth_token)
      stub_request(:get, "https://www.dwolla.com/oauth/rest/fundingsources?oauth_token=valid_token").
               with(:headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/json', 'User-Agent'=>'Dwolla Ruby Wrapper'}).
               to_return(:body => fixture("sources.json"))
      @account = user.funding_sources.first
    end
    it "should be a FundingSource object" do
      @account.should be_kind_of(Dwolla::FundingSource)
    end
    it "should get the correct id" do
      @account.id.should == "mE06khgHy9K/Ii9n5fbUEg=="
    end
    it "should get the right name" do
      @account.name.should == "Checking - My Bank"
    end
    it "should get the right type" do
      @account.type.should == "Checking"
    end
    it "should get whether the account is verified" do
      @account.should be_verified
    end
  end

  describe "adding a funding source" do
    it "should create a funding source" do
      user = Dwolla::User.new(:oauth_token => '12345', :id => '1')
    
      stub_post('/fundingsources/').
        to_return(:body => fixture("add_funding_source.json"))
  
      sourcehash = {
        "account_number" => "4434343434",
        "routing_number" => "343434343434",
        "account_type" => "checking",
        "name" => "My Checking Account - Checking"
      }
    
      funding_source = user.add_funding_source(sourcehash)
      funding_source.name.should eq 'My Checking Account - Checking'
    end
  end
  
  # "oauth_token": "",
  # "funding_id": "",
  # "pin": "",
  # "amount": ""
  
  pending "Depositing funds to dwolla from funding source" do  
  end
  
  pending "Withdrawing funds from dwolla to funding source" do
  end
  
end
