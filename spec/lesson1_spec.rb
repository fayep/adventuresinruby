# Criteria to pass lesson 1
#
require 'lesson1'

describe 'Lesson1' do
  before :all do
    @lesson1 = Lesson1.new
  end

  describe '#question1' do
    it 'sets an instance variable to :question_1' do
      expect(@lesson1.instance_variables.select do |v|
        @lesson1.instance_variable_get(v) == :question_1
      end .length).to eq(0)
      @lesson1.question1
      expect(@lesson1.instance_variables.select do |v|
        @lesson1.instance_variable_get(v) == :question_1
      end .length).to eq(1)
    end
  end

  describe '#question2' do
    it 'sets a constant to :question_2' do
      expect(Lesson1.constants.select do |v|
        Lesson1.const_get(v) == :question_2
      end .length).to eq(1)
    end
  end

  describe '#question3' do
    it 'returns the constant from question2' do
      expect(Lesson1.constants.select do |v|
        Lesson1.const_get(v) == @lesson1.question3
      end .length).to eq(1)
    end
  end

  describe '#question4' do
    it 'returns the sum of instance variables a and b' do
      @lesson1.a = rand(5) + 1
      @lesson1.b = rand(7) + 3
      expect(@lesson1.question4 - @lesson1.a - @lesson1.b).to eq(0)
    end
  end

  describe '#question5' do
    it 'returns the lowercase version of the given string' do
      expect(@lesson1.question5('Question5')).to eq('question5')
      expect(@lesson1.question5('Surprise')).to eq('surprise')
    end
  end
end
