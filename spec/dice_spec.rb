require 'dice'

describe Dice do
  it "a dice exists and responds to roll" do
    is_expected.to respond_to :roll
  end

 #  it 'gives a number between 1 and 6 when rolled' do
 # expect(subject.roll).to be_between(1, 6)
 # end

  it "I want to be able to roll any number of dice at the same time" do
   is_expected.to respond_to(:roll).with(1).argument
 end

 it "give the right number of results" do
  expect(subject.roll(7).size).to eq 7
end

it "give all the results between 1 and 6" do
   expect(subject.roll(10)).to all( be_between(1,6) )
 end
end
