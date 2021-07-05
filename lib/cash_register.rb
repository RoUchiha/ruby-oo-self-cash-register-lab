class CashRegister


    def initialize(discount = 0)
        self.total = 0
        
        self.discount = discount

        self.items = []

        self.last_transaction_amount = 0
    end

    def total=(number)
        @total = number
    end

    def total
        @total
    end

    def discount=(number)
        @discount = number
    end

    def discount
        @discount
    end

    def items=(cart)
        @items = cart
    end

    def items
        @items
    end

    def last_transaction_amount=(number)
        @last_transaction_amount = number
    end

    def last_transaction_amount
        @last_transaction_amount
    end

    def add_item(name, price, quantity = 1)
        self.total = self.total += (price * quantity)

        quantity.times do
            self.items << name
        end

        self.last_transaction_amount = price * quantity
    end
        
    def apply_discount 
        savings = (@discount.to_f / 100)
        self.total = (total - (total * savings)).to_i
        if @discount == 0
            return "There is no discount to apply."
        else
            return "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total = (total - last_transaction_amount)

        if items.length == 0
            total = 0.0
        end
    end

end

