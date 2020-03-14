class BankAccount
  attr_accessor :bank_account, :balance, :status
  attr_reader :name 
  
  def initialize(bank_account)
    @bank_account = bank_account
    @balance = 1000
    @status = "open"
    @name = "Avi"
  end
  
  def deposit(money)
    @balance += money
  end
    
  def display_balance
    display_balance = "Your balance is $#{balance}."
  end
 
  def valid?
    @status == "open" && @balance > 0 ? true : FALSE
  end
  
  def close_account
    self.status = "closed"
  end
  
 


end
