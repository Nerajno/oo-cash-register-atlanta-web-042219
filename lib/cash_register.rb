require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = last_transaction
    end

    def add_item(title,price,quantity=1)
        self.total += price*quantity 
        quantity.times do
            @items << title
        self.last_transaction = price
        end
    end

    def apply_discount
        if discount !=0
            self.total= (total/100)*(100-discount)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    
    def void_last_transaction
      self.total -= last_transaction
    end

end