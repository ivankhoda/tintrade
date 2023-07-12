require './classes/user'
require './classes/instruments'

def display_menu
  puts 'Stock Trading App'
  puts '1. Get accounts info'
  puts '2. Check connection'
  puts '3. Get stock info'
  puts '4. Exits'
  print 'Enter your choice: '
end

loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    pp(User.new.get_accounts)
    # Get stock quotesss
    # Implement the code to fetch stock quotes from an API and display the information.gem install grpc grpc-tools
  when 2
    print 'Enter account id: '
    account_id = gets.chomp

    User.new(account_id).get_margin_attributes
    # Buy stock
    # Implement the code to handle the buying of stocks.
  when 3
    print 'Enter stock id: '
    id = gets.chomp

    pp(Instruments.new.share_by(id))
    # Sell stock
    # Implement the code to handle the selling of stocks.
  when 4
    # Exit
    break
  else
    puts 'Invalid choice. Please try again.'
  end
end
