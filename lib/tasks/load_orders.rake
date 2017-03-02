namespace :ecommerce do
  desc 'Upload sale order data'
  task upload_sales_data: :environment do
    Order.transaction do 
      (1..100).each do |i|
        Order.create(:name => "Customer #{i}", :address => "#{i} Main Street", :email => "customer-#{i}@example.com", :pay_type => "Check")
      end
    end
    end
end