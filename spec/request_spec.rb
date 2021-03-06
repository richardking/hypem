require 'spec_helper'

describe Hypem::Request do

  let(:request) do
    Hypem::Request.new('/playlist/latest/fresh')
  end

  let(:response) do
    VCR.use_cassette('fresh_playlist') do
      request.get.response
    end
  end

  context "at initialization" do

    it "must have a url string parameter" do
      expect { Hypem::Request.new }.to raise_error ArgumentError
    end

    it "assigns the correct default url" do
      request.url.should == '/playlist/latest/fresh/json/1'
    end

    it "accepts a page option" do
      response = Hypem::Request.new('/url', page: 2)
      response.url.should == '/url/json/2'
    end

    it "assigns the response attribute" do
      response.should be_a Hypem::Response
    end

  end

  it "makes get requests" do
    response.body.should_not be_nil
    response.body.should_not be_empty
  end


end
