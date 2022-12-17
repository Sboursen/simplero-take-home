require_relative "solution"

describe "letter_avatar" do
  context 'Given a first_name and last name' do
    it 'returns an object with the right initials' do
      user = { id: 3, first_names: 'Jhon Bro', last_name: 'Smith'}
      expected = {initials: 'JS', color: 'green'} 

      result = letter_avatar(user)

      expect(result[:initials]).to eql(expected[:initials])
      expect(result[:color]).to eql(expected[:color])
    end
  end
end
