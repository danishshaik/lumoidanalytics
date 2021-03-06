require 'date'
require 'json'

class GraphController < ApplicationController
  def index
  	@graphTitles = ['ORDERS vs TIME', 'USERS vs TIME', 'AUDIO vs CAMERA']
  	@popular = Popular_item.first(5)
  end
  
  def about
  end

  def data
 #  	my_hash = {:hello => "goodbye"}.to_json
	# my_hash2 = {
	# 	    :labels => ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
	# 	    :datasets => [
	# 	        {
	# 	            :label => "My First dataset",
	# 	            :fillColor => "rgba(211,84,0,1)",
	# 	            :strokeColor => "rgba(211,84,0,1)",
	# 	            :pointColor => "rgba(211,84,0,1)",
	# 	            :pointStrokeColor => "#fff",
	# 	            :pointHighlightFill => "rgba(211,84,0,1)",
	# 	            :pointHighlightStroke => "rgba(220,220,220,1)",
	# 	            :data => [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	# 	        },
	# 	        {
	# 	            :label => "My Second dataset",
	# 	            :fillColor => "rgba(230,126,34,0.8)",
	# 	            :strokeColor => "rgba(230,126,34,0.8)",
	# 	            :pointColor => "rgba(230,126,34,1)",
	# 	            :pointStrokeColor => "rgba(230,126,34,1)",
	# 	            :pointHighlightFill => "rgba(230,126,34,0.8)",
	# 	            :pointHighlightStroke => "rgba(230,126,34,0.8)",
	# 	            :data => [28, 48, 40, 19, 86, 27, 90, 28, 48, 40, 19, 86]
	# 	        },
	# 	        {
	# 	            :label => "My Second dataset",
	# 	            :fillColor => "rgba(235,153,80,0.5)",
	# 	            :strokeColor => "rgba(235,153,80,0.5)",
	# 	            :pointColor => "rgba(235,153,80,1)",
	# 	            :pointStrokeColor => "rgba(235,153,80,1)",
	# 	            :pointHighlightFill => "rgba(235,153,80,0.5)",
	# 	            :pointHighlightStroke => "rgba(235,153,80,0.5)",
	# 	            :data => [18, 36, 30, 9, 69, 17, 84, 36, 30, 9, 69, 17]
	# 	        }
	# 	    ]
	# 	}.to_json
	results = ActiveRecord::Base.connection.execute("SELECT COALESCE(o1.charges_amount - o2.refund_charges, 0) as revenue
            FROM 
            (
              SELECT COALESCE(sum(charges.amount), 0) as charges_amount
              FROM orders
              INNER JOIN charges
              ON orders.id = charges.order_id AND (charges.charge_type = 'charge' OR charges.charge_type = 'hold')
              WHERE orders.status NOT IN ('in_progress')
              AND (charges.created_at BETWEEN '2015-01-01 04:49:43' AND '2016-01-01 04:49:43')
            ) as o1
            INNER JOIN
            (
              SELECT COALESCE(sum(charges.amount), 0) as refund_charges
              FROM orders
              INNER JOIN charges
              ON orders.id = charges.order_id AND charges.charge_type = 'refund'
              WHERE orders.status NOT IN ('in_progress')
              AND (charges.created_at BETWEEN '2015-01-01 04:49:43' AND '2016-01-01 04:49:43')
            ) as o2
	")
  	orders = Order.order(:start_date)
  	users = User.order(:created_at)

  	respond_to do |format|
      format.json {
        render :json => orders
      }
    end
  # 	@users = User.order(:created_at)
  # 	respond_to do |format|
  #     format.json {
  #       render :json => [
		# 	{
		# 	    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		# 	    datasets: [
		# 	        {
		# 	            label: "My First dataset",
		# 	            fillColor: "rgba(211,84,0,1)",
		# 	            strokeColor: "rgba(211,84,0,1)",
		# 	            pointColor: "rgba(211,84,0,1)",
		# 	            pointStrokeColor: "#fff",
		# 	            pointHighlightFill: "rgba(211,84,0,1)",
		# 	            pointHighlightStroke: "rgba(220,220,220,1)",
		# 	            data: [32, 25, 45, 43, 27, 28, 15, 27, 28, 15, 27, 28]
		# 	        },
		# 	        {
		# 	            label: "My Second dataset",
		# 	            fillColor: "rgba(230,126,34,0.8)",
		# 	            strokeColor: "rgba(230,126,34,0.8)",
		# 	            pointColor: "rgba(230,126,34,1)",
		# 	            pointStrokeColor: "rgba(230,126,34,1)",
		# 	            pointHighlightFill: "rgba(230,126,34,0.8)",
		# 	            pointHighlightStroke: "rgba(230,126,34,0.8)",
		# 	            data: [28, 48, 40, 19, 86, 27, 90, 28, 48, 40, 19, 86]
		# 	        },
		# 	        {
		# 	            label: "My Second dataset",
		# 	            fillColor: "rgba(235,153,80,0.5)",
		# 	            strokeColor: "rgba(235,153,80,0.5)",
		# 	            pointColor: "rgba(235,153,80,1)",
		# 	            pointStrokeColor: "rgba(235,153,80,1)",
		# 	            pointHighlightFill: "rgba(235,153,80,0.5)",
		# 	            pointHighlightStroke: "rgba(235,153,80,0.5)",
		# 	            data: [18, 36, 30, 9, 69, 17, 84, 36, 30, 9, 69, 17]
		# 	        }
		# 	    ]
		# 	}
		# ]
  #     }
  #   end
  end

  def userdata
  	users = User.order(:created_at)

  	respond_to do |format|
      format.json {
        render :json => users
      }
    end
  end
  def popular
  	revArr = []
  	for i in 1..12
	   	start_date = '2015-' + i.to_s + '-01'
	   	if i === 2
	   		end_date = '2015-' + i.to_s + '-30'
	   	elsif i%2 === 0
	   		end_date = '2015-' + i.to_s + '-30'
	  	else
	  		end_date = '2015-' + i.to_s + '-31'
	  	end
	  	sql = "SELECT COALESCE(o1.charges_amount - o2.refund_charges, 0) as revenue
	            FROM 
	            (
	              SELECT COALESCE(sum(charges.amount), 0) as charges_amount
	              FROM orders
	              INNER JOIN charges
	              ON orders.id = charges.order_id AND (charges.charge_type = 'charge' OR charges.charge_type = 'hold')
	              WHERE orders.status NOT IN ('in_progress')
	              AND (charges.created_at BETWEEN '" + start_date + "' AND '" + end_date + "')
	            ) as o1
	            INNER JOIN
	            (
	              SELECT COALESCE(sum(charges.amount), 0) as refund_charges
	              FROM orders
	              INNER JOIN charges
	              ON orders.id = charges.order_id AND charges.charge_type = 'refund'
	              WHERE orders.status NOT IN ('in_progress')
	              AND (charges.created_at BETWEEN '" + start_date + "' AND '" + end_date + "')
	            ) as o2"
	  	results = ActiveRecord::Base.connection.execute(sql)
	  	revArr.push(results)
	end
  	# start_date = '2015-01-01'
  	# end_date = '2016-01-01'
  	# sql = "SELECT COALESCE(o1.charges_amount - o2.refund_charges, 0) as revenue
   #          FROM 
   #          (
   #            SELECT COALESCE(sum(charges.amount), 0) as charges_amount
   #            FROM orders
   #            INNER JOIN charges
   #            ON orders.id = charges.order_id AND (charges.charge_type = 'charge' OR charges.charge_type = 'hold')
   #            WHERE orders.status NOT IN ('in_progress')
   #            AND (charges.created_at BETWEEN '" + start_date + "' AND '" + end_date + "')
   #          ) as o1
   #          INNER JOIN
   #          (
   #            SELECT COALESCE(sum(charges.amount), 0) as refund_charges
   #            FROM orders
   #            INNER JOIN charges
   #            ON orders.id = charges.order_id AND charges.charge_type = 'refund'
   #            WHERE orders.status NOT IN ('in_progress')
   #            AND (charges.created_at BETWEEN '" + start_date + "' AND '" + end_date + "')
   #          ) as o2"
  	# results = ActiveRecord::Base.connection.execute(sql)

  	# puts results.class
  	respond_to do |format|
      format.json {
        render :json => revArr
      }
   
    end
  end

  def piedata
  	respond_to do |format|
  		format.json {
  			render :json => [
  				[
				    {
				        value: 380,
				        color:"#FD6F4A",
				        highlight: "#FF5A5E",
				        label: "Red"
				    },
				    {
				        value: 650,
				        color: "#EAECEB",
				        highlight: "#FFC870",
				        label: "Yellow"
				    }
				],
				[
				    {
				        value: 100,
				        color:"#F7464A",
				        highlight: "#FF5A5E",
				        label: "Red"
				    },
				    {
				        value: 30,
				        color: "#46BFBD",
				        highlight: "#5AD3D1",
				        label: "Green"
				    },
				    {
				        value: 200,
				        color: "#FDB45C",
				        highlight: "#FFC870",
				        label: "Yellow"
				    }
				],

				[
				    {
				        value: 600,
				        color:"#F7464A",
				        highlight: "#FF5A5E",
				        label: "Red"
				    },
				    {
				        value: 20,
				        color: "#46BFBD",
				        highlight: "#5AD3D1",
				        label: "Green"
				    },
				    {
				        value: 200,
				        color: "#FDB45C",
				        highlight: "#FFC870",
				        label: "Yellow"
				    }
				],
				[
				    {
				        value: 30,
				        color:"#F7464A",
				        highlight: "#FF5A5E",
				        label: "Red"
				    },
				    {
				        value: 50,
				        color: "#46BFBD",
				        highlight: "#5AD3D1",
				        label: "Green"
				    },
				    {
				        value: 20,
				        color: "#FDB45C",
				        highlight: "#FFC870",
				        label: "Yellow"
				    }
				]

			]
  		}
  	end
  end 
  def bardata
  	respond_to do |format|
  		format.json {
  			render :json => [
				{
				    labels: ["January", "February", "March", "April", "May"],
				    datasets: [
				        {
				            label: "My First dataset",
				            fillColor: "#fee2da",
				            strokeColor: "#fee2da",
				            highlightFill: "#fee2da",
				            highlightStroke: "#fee2da",
				            data: [65, 59, 80, 81, 56]
				        },
				        {
				            label: "My Second dataset",
				            fillColor: "#FD6F4A",
				            strokeColor: "#FD6F4A",
				            highlightFill: "#FD6F4A",
				            highlightStroke: "#FD6F4A",
				            data: [28, 48, 40, 19, 86]
				        }
				    ]
				}
  			]
  		}
  	end
  end
end
