class Order < ActiveRecord::Base

attr_accessor :cvv, :card_number, :stripe_token, :exp_month, :exp_year, :stripe_credit_card_id

PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  # ...
  validates :name, :address, :email, :presence => true

  has_many :line_items, :dependent => :destroy
  # ...
  # ...
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def buy_with_stripe
    if self.valid?
      begin
        customer = Stripe::Customer.create(
          :email => self.email,
          :source  => self.stripe_token
        )
        self.stripe_customer_token = customer.id
        
        charge = Stripe::Charge.create(
          :customer    => customer.id,
          :amount      => ((line_items.map(&:product).map(&:price).sum) * 100).to_i,
          :description => 'Rails Stripe customer',
          :currency    => 'usd'
        )
        self.save
      rescue Stripe::CardError => e
        errors.add(:base , e.message)
        false
      end
    end
  end
end
