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
  
  def execute_transaction(amount)
    if @sender.balance > @amount && @statuse == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "Complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
    
    
    
  end
  
end
