require "spec_helper"

describe Notifications do
  describe "activate" do
    let(:mail) { Notifications.activate }

    it "renders the headers" do
      mail.subject.should eq("Activate")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
