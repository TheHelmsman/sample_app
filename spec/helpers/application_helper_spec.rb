require 'spec_helper'

  describe ApplicationHelper do

    describe "full_title" do
      it "should include the page title" do
        full_title("foo").should =~ /foo/
      end
      
      it "should include the base title" do
        full_title("foo").should =~ /^Ruby on Rails Tutorial Sample App/
      end

      it "should not include a bar for the home page" do
        # TODO need to debug the problem with reg exp
        #full_title("").should not =~ /\|/
      end
    end
end