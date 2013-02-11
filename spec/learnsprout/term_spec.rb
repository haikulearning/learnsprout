require 'spec_helper'

module LearnSprout
  describe Term do
    describe "#current?" do
      it "knows old terms are not current" do
        term = Term.new("start_date" => (Date.today - 90).to_s, "end_date" => (Date.today - 30).to_s)
        term.current?.should be_false
      end
      
      it "knows terms whose date range includes today are current" do
        term = Term.new("start_date" => (Date.today - 90).to_s, "end_date" => (Date.today + 30).to_s)
        term.current?.should be_true
      end
      
      it "knows terms that started in the past and don't have an end date are current" do
        term = Term.new("start_date" => (Date.today - 90).to_s)
        term.current?.should be_true
      end
      
      it "knows terms that end in the future and don't have a start date are current" do
        term = Term.new("start_date" => (Date.today - 90).to_s)
        term.current?.should be_true
      end
      
      it "knows terms without start and end dates are current" do
        term = Term.new
        term.current?.should be_true
      end
      
      it "knows future terms are not current" do
        term = Term.new("start_date" => (Date.today + 90).to_s, "end_date" => (Date.today + 120).to_s)
        term.current?.should be_false
      end
    end
  end
end
