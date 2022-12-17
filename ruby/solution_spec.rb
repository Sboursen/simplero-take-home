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
  
  context 'Given a nil first_name' do
    it 'returns an object with the right initials' do
      user = { id: 3, first_names: nil, last_name: 'Smith'}
      expected = {initials: 'AS', color: 'green'} 

      result = letter_avatar(user)

      expect(result[:initials]).to eql(expected[:initials])
      expect(result[:color]).to eql(expected[:color])
    end
  end

  context 'Given first_names and last_name are both nil' do
    it 'returns an object with the right initials' do
      user = { id: 3, first_names: nil, last_name: nil}
      expected = {initials: 'AV', color: 'green'} 

      result = letter_avatar(user)

      expect(result[:initials]).to eql(expected[:initials])
      expect(result[:color]).to eql(expected[:color])
    end
  end

  context 'Given another Id' do
    it 'returns an object with the right initials' do
      user = { id: 0, first_names: nil, last_name: nil}
      expected = {initials: 'AV', color: 'red'} 

      result = letter_avatar(user)

      expect(result[:initials]).to eql(expected[:initials])
      expect(result[:color]).to eql(expected[:color])
    end
  end
end
