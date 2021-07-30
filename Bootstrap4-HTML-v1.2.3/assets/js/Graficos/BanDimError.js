Highcharts.chart('container', {

    title: {
        text: 'Ban Dim'
    },

    subtitle: {
        text: ''
    },

    yAxis: {
        title: {
            text: 'IN'
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 2010
        }
    },

    series: [ {
        name: 'ERROR',
        data: [-0.0015, -0.0017, -0.0015, -0.0017, -0.008, -0.005, -0.0013]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});