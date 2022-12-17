require_relative "solution"

describe "format" do
  context 'Given a string s of digits and symbols' do
    it 'removes the non digit numbers' do
      s = "(+1) 888 33x19"
      expected = 0

      result = format(s)

      expect(result.scan(/[^0-9^\-]/).length).to eql(expected)
    end
  end

  context 'Given a string s that have 3k number of digits' do
    it 'returns a string of digits grouped 3 by 3 and separated with a - symbol' do
      s = "(+1) 888 33x19"
      expected = "188-833-19"

      result = format(s)

      expect(result).to eql(expected)
    end
  end

  context 'Given a string s that have 3k + 1 number of digits' do
    it 'returns a string of digits grouped 3 by 3 and separated with a - symbol and two 2 digits groups at the end' do
      s = "555 123 1234"
      expected = "555-123-12-34"

      result = format(s)

      expect(result).to eql(expected)
    end
  end

  context 'Given a string s that have 3k + 2 number of digits' do
    it 'returns a string of digits grouped 3 by 3 and separated with a - symbol and one 2 digits groups at the end' do
      s = "55+5 123 1234 9"
      expected = "555-123-123-49"

      result = format(s)

      expect(result).to eql(expected)
    end
  end
end
