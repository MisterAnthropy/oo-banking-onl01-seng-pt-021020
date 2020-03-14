require "pry"
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false 
  end
  

  def execute_transaction
   @sender - @amount
   @status = "complete"
   
    #binding.pry 
end
    
    
    

  
end
