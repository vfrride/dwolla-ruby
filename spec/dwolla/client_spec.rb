require 'spec_helper'

describe Dwolla::Client do
  subject { Dwolla::Client.new('sample_client_id', 'sample_client_secret') }
  let(:query_params) { "client_id=sample_client_id&client_secret=sample_client_secret" }

  describe "getting user basic information" do
    before do
      stub_get('/users/812-111-1111', query_params).
        to_return(:body => fixture("basic_information.json"))
    end

    it 'should request the correct resource' do
      subject.user('812-111-1111')
      a_get('/users/812-111-1111', query_params).should have_been_made
    end

    it 'should return extended information of a given user' do
      user = subject.user('812-111-1111')
      user.should be_a Dwolla::User
      user.id.should == '812-111-1111'
      user.name.should == 'Test User'
      user.latitude.should == 41.584546
      user.longitude.should == -93.634167
    end
  end
  
  describe "registering a user" do
    it 'should register a user and return a user object' do
      stub_post('/register/').
        to_return(:body => fixture("register.json"))
    
      userhash = {"email" => "test@test.com",
        "password" => "Asdfasdf43434",
        "pin" => "4343",
        "firstName" => "Test",
        "lastName" => "User",
        "address" => "204 W. Test St.",
        "city" => "Lansing",
        "state" => "MI",
        "zip" => "48906",
        "phone" => "5175557621",
        "dateOfBirth" => "07-12-1983",
        "type" => "Personal",
        "acceptTerms" => "true"}
      
      user = subject.register_user(userhash)
      user.name.should eq 'Test User'
    end
  end
end
