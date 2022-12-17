def letter_avatar(user)
  colors = ['red','blue','yellow','green','pink','ambar','black']
  first_initial = "A"
  last_initial = "V"

  first_initial = user[:first_names][0] unless user[:first_names].nil?
  last_initial = user[:last_name][0] unless user[:last_name].nil?

  initials = "#{first_initial}#{last_initial}"

  color = colors[user[:id] % colors.length]

  {initials: , color:}
  
end
