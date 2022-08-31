class Order < ApplicationRecord
    enum status: { pending: 0, failed: 1, paid: 2}
    has_and_belongs_to_many :products
    belongs_to :user
    has_one :address
  
    scope :recently_created, ->  { where(created_at: 1.minutes.ago..DateTime.now) }
  
    def set_paid
      self.status = Order.statuses[:paid]
    end
    def set_failed
      self.status = Order.statuses[:failed]
    end
  end