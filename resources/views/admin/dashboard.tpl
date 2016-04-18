<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]--><head>
	<meta charset="utf-8">
	<{include file="common/title.inc.tpl"}>
	
<meta name="csrf-token" content="<{csrf_token()}>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="renderer" content="webkit">
	<{include file="common/icons.inc.tpl"}>
	<{include file="admin/common/styles.inc.tpl"}>
	<{include file="admin/common/scripts.inc.tpl"}>
	<script src="<{'static/js/chart/flot/jquery.flot.min.js'|url}>"></script>
</head>

<body>
	<div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
		<{include file="admin/sidebar.inc.tpl"}>	
        <div style=" width:893px; height:50px; float:right; background:#313854;"></div>
        <div style=" width:893px; height:387px; float:right;"><p style=" width:300px; hei 30px; display:block; margin:0 auto; color:#FFF; font-size:24px; font-weight:100px; margin-top:170px;">欢迎光临美食网后台</p></div>
	</div>
	
	


	<script>
	(function($){
		// Get the elements where we will attach the charts
		var dashWidgetChart = $('#dash-widget-chart');

		// Random data for the chart
		var dataEarnings = [[1, 1560], [2, 1650], [3, 1320], [4, 1950], [5, 1800], [6, 2400], [7, 2100], [8, 2550], [9, 3300], [10, 3900], [11, 4200], [12, 4500]];
		var dataSales = [[1, 500], [2, 420], [3, 480], [4, 350], [5, 600], [6, 850], [7, 1100], [8, 950], [9, 1220], [10, 1300], [11, 1500], [12, 1700]];

		// Array with month labels used in chart
		var chartMonths = [[1, '11周前'], [2, '10周前'], [3, '9周前'], [4, '8周前'], [5, '7周前'], [6, '6周前'], [7, '5周前'], [8, '4周前'], [9, '3周前'], [10, '2周前'], [11, '1周前'], [12, '本周']];

		// Initialize Dash Widget Chart
		$.plot(dashWidgetChart,
			[
				{
					data: dataEarnings,
					lines: {show: true, fill: false},
					points: {show: true, radius: 6, fillColor: '#cccccc'}
				},
				{
					data: dataSales,
					lines: {show: true, fill: false},
					points: {show: true, radius: 6, fillColor: '#ffffff'}
				}
			],
			{
				colors: ['#ffffff', '#353535'],
				legend: {show: false},
				grid: {borderWidth: 0, hoverable: true, clickable: true},
				yaxis: {show: false},
				xaxis: {show: false, ticks: chartMonths}
			}
		);

		// Creating and attaching a tooltip to the widget
		var previousPoint = null, ttlabel = null;
		dashWidgetChart.bind('plothover', function(event, pos, item) {

			if (item) {
				if (previousPoint !== item.dataIndex) {
					previousPoint = item.dataIndex;

					$('#chart-tooltip').remove();
					var x = item.datapoint[0], y = item.datapoint[1];

					// Get xaxis label
					var monthLabel = item.series.xaxis.options.ticks[item.dataIndex][1];

					if (item.seriesIndex === 1) {
						ttlabel = '<strong>' + y + '</strong> sales in <strong>' + monthLabel + '</strong>';
					} else {
						ttlabel = '$ <strong>' + y + '</strong> in <strong>' + monthLabel + '</strong>';
					}

					$('<div id="chart-tooltip" class="chart-tooltip">' + ttlabel + '</div>')
						.css({top: item.pageY - 50, left: item.pageX - 50}).appendTo("body").show();
				}
			}
			else {
				$('#chart-tooltip').remove();
				previousPoint = null;
			}
	});
	})(jQuery);
	</script>
</body>
</html>
