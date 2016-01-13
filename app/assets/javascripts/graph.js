// // Place all the behaviors and hooks related to the matching controller here.
// // All this logic will automatically be available in application.js.
// Chart.defaults.global = {
//     animation: true,
//     animationSteps: 60,
//     animationEasing: "easeOutQuart",
//     showScale: true,
//     scaleOverride: false,
//     scaleSteps: null,
//     scaleStepWidth: null,
//     scaleStartValue: null,
//     scaleLineColor: "rgba(0,0,0,.1)",
//     scaleLineWidth: 1,
//     scaleShowLabels: true,
//     scaleLabel: "<%=value%>",
//     scaleIntegersOnly: true,
//     scaleBeginAtZero: false,
//     scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
//     scaleFontSize: 12,
//     scaleFontStyle: "normal",
//     scaleFontColor: "#C1C6CF",
//     responsive: false,
//     maintainAspectRatio: true,
//     showTooltips: true,
//     customTooltips: false,
//     tooltipEvents: ["mousemove", "touchstart", "touchmove"],
//     tooltipFillColor: "rgba(0,0,0,0.8)",
//     tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
//     tooltipFontSize: 14,
//     tooltipFontStyle: "normal",
//     tooltipFontColor: "#fff",
//     tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
//     tooltipTitleFontSize: 14,
//     tooltipTitleFontStyle: "bold",
//     tooltipTitleFontColor: "#fff",
//     tooltipYPadding: 6,
//     tooltipXPadding: 6,
//     tooltipCaretSize: 8,
//     tooltipCornerRadius: 6,
//     tooltipXOffset: 10,
//     responsive: true,
//     tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",
//     multiTooltipTemplate: "<%= value %>",

//     onAnimationProgress: function(){},

//     onAnimationComplete: function(){}
// };

// $.ajax({
//    type: "GET",
//    contentType: "application/json; charset=utf-8",
//    url: 'data',
//    dataType: 'json',
//    success: function (data) {
//    	var formatdata = {
//     labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
//     datasets: [
//         {
//             label: "My First dataset",
//             fillColor: "rgba(220,220,220,0.2)",
//             strokeColor: "rgba(220,220,220,1)",
//             pointColor: "rgba(220,220,220,1)",
//             pointStrokeColor: "#fff",
//             pointHighlightFill: "#fff",
//             pointHighlightStroke: "rgba(220,220,220,1)",
//             data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//         }
//     ]
// };
//    		var graphdata = [];

//    		for (var i = 0; i < data.length; i++) {
//    			var date = new Date(data[i].start_date)
//    			if (date.getFullYear() == 2015) {
//    				graphdata.push(data[i])
//    			}
//    		}
//    		for (var i = 0; i < graphdata.length; i++) {
//    			var date = new Date(graphdata[i].start_date)
//    			formatdata.datasets[0].data[date.getMonth()]++;
//    		}
//    		data = data[0];
// 		var ctx = document.getElementById("myChart").getContext("2d");
// 		options = {
// 			scaleFontColor: "#C5C8CE",
// 			scaleOverride: true,
// 			scaleSteps: 4,
// 			scaleStepWidth: 30,
// 			scaleStartValue: 0,
//    			scaleShowGridLines : true,
// 		    scaleGridLineColor : "rgba(0,0,0,.05)",
// 		    scaleGridLineWidth : 1,
// 		    scaleShowHorizontalLines: true,
// 		    scaleShowVerticalLines: true,
// 		    bezierCurve : true,
// 		    bezierCurveTension : 0.4,
// 		    pointDot : true,
// 		    pointDotRadius : 4,
// 		    pointDotStrokeWidth : 1,
// 		    pointHitDetectionRadius : 20,
// 		    datasetStroke : false,
// 		    datasetStrokeWidth : 2,
// 		    datasetFill : true,
// 		    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
// 		};
// 		var myLineChart = new Chart(ctx).Line(formatdata, options);
//    },
//    error: function (result) {
//        error();
//    }
// });


// $.ajax({
//    type: "GET",
//    contentType: "application/json; charset=utf-8",
//    url: 'userdata',
//    dataType: 'json',
//    success: function (data) {
//    	console.log(data);
//    	var formatdata = {
//     labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
//     datasets: [
//         {
//             label: "My First dataset",
//             fillColor: "rgba(235,153,80,0.5)",
// 			strokeColor: "rgba(235,153,80,0.5)",
// 			pointColor: "rgba(235,153,80,1)",
// 			pointStrokeColor: "rgba(235,153,80,1)",
// 			pointHighlightFill: "rgba(235,153,80,0.5)",
// 			pointHighlightStroke: "rgba(235,153,80,0.5)",
//             data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//         }
//     ]
// };
//    		var graphdata = [];
//    		for (var i = 0; i < data.length; i++) {
//    			var date = new Date(data[i].created_at)
//    			if (date.getFullYear() == 2015) {
//    				graphdata.push(data[i])
//    			}
//    		}
//    		for (var i = 0; i < graphdata.length; i++) {
//    			var date = new Date(graphdata[i].created_at)
//    			formatdata.datasets[0].data[date.getMonth()]++;
//    		}
//    		data = data[0];
// 		var ctx = document.getElementById("lineChart").getContext("2d");
// 		options = {
// 			scaleFontColor: "#C5C8CE",
// 			scaleOverride: true,
// 			scaleSteps: 4,
// 			scaleStepWidth: 30,
// 			scaleStartValue: 0,
//    			scaleShowGridLines : true,
// 		    scaleGridLineColor : "rgba(0,0,0,.05)",
// 		    scaleGridLineWidth : 1,
// 		    scaleShowHorizontalLines: true,
// 		    scaleShowVerticalLines: true,
// 		    bezierCurve : true,
// 		    bezierCurveTension : 0.4,
// 		    pointDot : true,
// 		    pointDotRadius : 4,
// 		    pointDotStrokeWidth : 1,
// 		    pointHitDetectionRadius : 20,
// 		    datasetStroke : false,
// 		    datasetStrokeWidth : 2,
// 		    datasetFill : true,
// 		    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
// 		};
// 		var myLineChart = new Chart(ctx).Line(formatdata, options);
//    },
//    error: function (result) {
//        error();
//    }
// });

// $.ajax({
//    type: "GET",
//    contentType: "application/json; charset=utf-8",
//    url: 'piedata',
//    dataType: 'json',
//    success: function (data) {
//    		data = data;
// 		var ctx = document.getElementById("pieChart").getContext("2d");
// 		var ctx2 = document.getElementById("pieChart2").getContext("2d");
// 		var ctx3 = document.getElementById("pieChart3").getContext("2d");
// 		var ctx4 = document.getElementById("pieChart4").getContext("2d");

// 		options = {
// 		    scaleShowLabelBackdrop : true,
// 		    scaleBackdropColor : "rgba(255,255,255,0.75)",
// 		    scaleBeginAtZero : true,
// 		    scaleBackdropPaddingY : 2,
// 		    scaleBackdropPaddingX : 2,
// 		    percentageInnerCutout : 87,
// 		    scaleShowLine : true,
// 		    segmentShowStroke : false,
// 		    segmentStrokeColor : "#F8F8F8",
// 		    segmentStrokeWidth : 1,
// 		    animationSteps : 100,
// 		    animationEasing : "easeOutBounce",
// 		    animateRotate : true,
// 		    animateScale : false,
// 		    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"
// 		};

// 		var myDoughnutChart = new Chart(ctx).Doughnut(data[0],options);
// 		var myDoughnutChart2 = new Chart(ctx2).Doughnut(data[1],options);
// 		var myDoughnutChart3 = new Chart(ctx3).Doughnut(data[2],options);
// 		var myDoughnutChart4 = new Chart(ctx4).Doughnut(data[3],options);
//    },
//    error: function (result) {
//        error();
//    }
// });

// // $.ajax({
// //    type: "GET",
// //    contentType: "application/json; charset=utf-8",
// //    url: '../users/usersdata',
// //    dataType: 'json',
// //    success: function (data) {
// //    	console.log(data);
// //    },
// //    error: function (result) {
// //        error();
// //    }
// // });

// $.ajax({
//    type: "GET",
//    contentType: "application/json; charset=utf-8",
//    url: 'bardata',
//    dataType: 'json',
//    success: function (data) {
//    		data = data[0];
//    		var options = {
// 		    scaleBeginAtZero : true,
// 		    scaleShowGridLines : true,
// 		    scaleGridLineColor : "rgba(0,0,0,.05)",
// 		    scaleGridLineWidth : 1,
// 		    scaleShowHorizontalLines: true,
// 		    scaleShowVerticalLines: true,
// 		    barShowStroke : true,
// 		    barStrokeWidth : 2,
// 		    barValueSpacing : 5,
// 		    barDatasetSpacing : 1,
// 		    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
// 		};
//    		var ctx = document.getElementById("barChart").getContext("2d");
//    		var myBarChart = new Chart(ctx).Bar(data, options);
//    },
//    error: function (result) {
//        error();
//    }
// });

//Sort the values by y, so that nvd3 graphs as a function
function sortNumbers (a,b) {
	return a.x - b.x;
}

//Abstraction of format algo
function format () {
	var json = [
		{
			"key": "Orders",
			"values": []
		}
	];

	for(var i = 0; i < data.length; i++) {
		var date = new Date(data[i].created_at)
		date.setDate(1);
		date.setSeconds(0);
		date.setMinutes(0);
		date.setHours(0);
		date = date.getTime();
		var add = false;
		for(var k = 0; k < json[0].values.length; k++ ) {
			if (json[0].values[k].x === date) {
				json[0].values[k].y++
				add = true;
			}
		}
		if(!add) {
			json[0].values.push({"x": date, "y": 0});
		}
	}
	var max = 0;
	for (var i = 0; i < json[0].values.length; i++) {
		if(max < json[0].values[i].y) {
			max = json[0].values[i].y;
		}
	}
}

function graph (data){
	nv.addGraph(function() {
		var chart = nv.models.lineWithFocusChart();
		chart.interpolate("monotone");

		chart.forceY([0, 400]);
		chart.xAxis
			.tickFormat(function(d) {
				return d3.time.format('%x')(new Date(d))
			});

		chart.yAxis
			.tickFormat(d3.format(',.2f'));

		chart.y2Axis
			.tickFormat(d3.format(',.2f'));

		d3.select('#chart svg')
			.datum(data)
			.transition().duration(500)
			.call(chart);

		nv.utils.windowResize(chart.update);
		return chart;
	});
}

$( document ).ready(function() {
	$.ajax({
		type: "GET",
		contentType: "application/json; charset=utf-8",
		url: 'data',
		dataType: 'json',
		success: function (data) {
			var json = [
				{
					"key": "Orders",
					"values": []
				},
				{
					"key": "Users",
					"values": []
				},
				{
					"key": "Revenue",
					"values": []
				}
			];

			for(var i = 0; i < data.length; i++) {
				var date = new Date(data[i].created_at)
				date.setDate(1);
				date.setSeconds(0);
				date.setMinutes(0);
				date.setHours(0);
				date = date.getTime();
				var add = false;
				for(var k = 0; k < json[0].values.length; k++ ) {
					if (json[0].values[k].x === date) {
						json[0].values[k].y++
						add = true;
					}
				}
				if(!add) {
					json[0].values.push({"x": date, "y": 0});
				}
			}
			var max = 0;
			for (var i = 0; i < json[0].values.length; i++) {
				if(max < json[0].values[i].y) {
					max = json[0].values[i].y;
				}
			}

			json[0].values.sort(sortNumbers);

			$.ajax({
				type:"GET",
				contentType: "application/json; charset=utf-8",
				url: "userdata",
				dataType: "json",
				success: function (userdata) {
					for(var i = 0; i < userdata.length; i++) {
						var date = new Date(userdata[i].created_at)
						date.setDate(1);
						date.setSeconds(0);
						date.setMinutes(0);
						date.setHours(0);
						date = date.getTime();
						var add = false;
						for(var k = 0; k < json[1].values.length; k++ ) {
							if (json[1].values[k].x === date) {
								json[1].values[k].y++
								add = true;
							}
						}
						if(!add) {
							json[1].values.push({"x": date, "y": 0});
						}
						json[1].values.sort(sortNumbers);

					}
					$.ajax({
						type:"GET",
						contentType: "application/json; charset=utf-8",
						url: "popular",
						dataType: "json",
						success: function (revenuedata) {
							console.log(revenuedata.length)
							for(var i = 0; i < revenuedata.length; i++) {
								var date = new Date(2015, i, 1);
								console.log(revenuedata);
								date = date.getTime();
								json[2].values.push({"x": date, "y": revenuedata[i][0][0]});
							}
							graph(json);
						},
						error: function (result) {
							error();
						}
					});
					// graph(max, json);
				},
				error: function (result) {
					error();
				}
			});
		},
		error: function (result) {
			error();
		}
	});
});

