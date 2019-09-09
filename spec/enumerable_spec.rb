require_relative '../enumerable'

RSpec.describe Enumerable do
    describe "#my_each" do
        it "Takes a block as argument" do
    
            a=[]
            [1,2,3,4,5].my_each {|x| a<<x}
            expect(a).to eql([1,2,3,4,5])
        end
    end

    describe "#my_each_with_index" do
      it "Takes a block as argument" do
          [1,2,3,4,5].my_each_with_index {|x,i| i}
          expect(a).to eql([1,2,3,4,5])
      end
  end
end