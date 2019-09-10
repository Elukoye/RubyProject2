require_relative '../enumerable'

RSpec.describe Enumerable do
    describe "#my_each" do
        it "Takes a block as argument" do
    
            a=[]
            [1,2,3,4,5].my_each {|item| a<<item}
            expect(a).to eql([1,2,3,4,5])
        end
    end

    describe "#my_each_with_index" do
        it "takes the index of each element" do
            expect([1,2,3].my_each_with_index {|item, i| item*i}).to eql([0,2,6]) 
        end
    end

    describe "#my_select" do
        it "it takes all element that meet the condition" do
            result=[1,2,3,8,7,10,13].my_select { |item| item>8}
            expect(result).to eql([10,13])
        end
    end

    describe "#my_all?" do
        it "returns true if all element are true otherwise false" do
            expect([2,4,8].my_all? {|item| item.even? }).to eql(true)
        end
    end
end