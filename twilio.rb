require 'rubygems'
require 'twilio-ruby'

account_sid = "ACcc7fec048e1507d411dc7c290b04f8f5"
auth_token = "6e1808b9065ae9707126d4f44e67ffbb"

@client = Twilio::REST::Client.new(account_sid, auth_token)

@residence = ['live in a mansion', 'live in an apartment', 'live in a shack', 'be homeless']
@future_residence = @residence.sample
 def question
   mate = []
   puts "Name a possible mate:"
   name = gets.chomp
   mate.push(name)
   puts "Name another possible mate:"
   name = gets.chomp
   mate.push(name)
   puts "Name one more possible mate:"
   name = gets.chomp
   mate.push(name)
   @future_mate = mate.sample
   question2
end

def question2
 occupation = []
 puts "Name a possible occupation:"
 job = gets.chomp
 occupation.push(job)
 puts "Name another occupation:"
 job = gets.chomp
 occupation.push(job)
 puts "Name one more occupation:"
 job = gets.chomp
 occupation.push(job)
 @future_job = occupation.sample
end


puts "Would you like to play MASH? Y/N"
answer = gets.chomp.downcase

if answer == "y"
 puts "Great! Let's get started."
 question
elsif answer == 'n'
 puts "Okay. Maybe next time."
else
 puts "I'll take that as a yes!"
 question
end


message = @client.account.messages.create(
  :from => "+1 802-532-3366",
  :to =>"+1 603-631-6139",
  :body => "Your future mate is #{@future_mate}, your future job is a #{@future_job}, and you will #{@future_residence}!"
)

puts message.to



#ACCOUNT SID
#ACcc7fec048e1507d411dc7c290b04f8f5

#AUTH TOKEN
#6e1808b9065ae9707126d4f44e67ffbb
# #
#+1 802-532-3366
