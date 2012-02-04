ActiveAdmin.register Post do
  scope :all, :default => true
  
  actions :index, :show
  
  filter :data, :as => :date_range
  filter :titulo
  filter :texto
  
  index do
    column("Order", :sortable => :id) {|order| link_to "##{order.id} ", admin_post_path(order) }
    column("Data", :data)
    column("Titulo", :titulo )
    column("Chamada", :chamada)
    column("Texto", :texto )
  end
  
=begin  
  show do
    panel "Post" do
      table_for(order.line_items) do |t|
        t.column("Product") {|item| auto_link item.product        }
        t.column("Price")   {|item| number_to_currency item.price }
        tr :class => "odd" do
          td "Total:", :style => "text-align: right;"
          td number_to_currency(order.total_price)
        end
      end
    end

    active_admin_comments
=end
  
end
