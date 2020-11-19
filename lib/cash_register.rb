require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize (discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, amount, quantity=1)
        self.total += amount * quantity
        quantity.times do
          items << title
        end
        self.last_transaction = amount * quantity
      end

      def apply_discount
        if self.total > 0
        self.total -= ((self.total.to_f) * (discount.to_f/100.0))
        p "After the discount, the total comes to $#{self.total.to_i}."
        elsif self.discount = 0
        p "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
      end

end