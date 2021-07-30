// Make monochrome colors
var pieColors = (function () {
    var colors = [],
        base = Highcharts.getOptions().colors[0],
        i;

    for (i = 0; i < 10; i += 1) {
        // Start out with a darkened base color (negative brighten), and end
        // up with a much brighter color
        colors.push(Highcharts.Color(base).brighten((i - 3) / 7).get());
    }
    return colors;
}());

// Build the chart
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: ''
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.y} PZS</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.percentage:.1f} %</b>',
                distance: 10,
            },
            borderWidth: 0,
            borderColor: null,
            showInLegend: true
        }
    },
    series: [{
        name: 'Total',
        colorByPoint: true,
        data: [
            { name: 'PUL85', y: 16, color: '#21618C' },
            { name: 'PUL91', y: 30, color: '#5DADE2' },
            { name: 'PUL68', y: 4, color: '#AED6F1' },
            { name: 'PUL86', y: 90, color: '#2E86C1' },
            { name: 'PUL54', y: 24, color: '#EBF5FB' }
        ],
    }],
    credits: {
        enabled: false
    }

});

// Make monochrome colors
var pieColors = (function () {
    var colors = [],
        base = Highcharts.getOptions().colors[0],
        i;

    for (i = 0; i < 10; i += 1) {
        // Start out with a darkened base color (negative brighten), and end
        // up with a much brighter color
        colors.push(Highcharts.Color(base).brighten((i - 3) / 7).get());
    }
    return colors;
}());

// Build the chart
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: ''
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.y} PZS</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.percentage:.1f} %</b>',
                distance: 10,
            },
            borderWidth: 0,
            borderColor: null,
            showInLegend: true
        }
    },
    series: [{
        name: 'Total',
        colorByPoint: true,
        data: [
            { name: 'PUL85', y: 16, color: '#21618C' },
            { name: 'PUL91', y: 30, color: '#5DADE2' },
            { name: 'PUL68', y: 4, color: '#AED6F1' },
            { name: 'PUL86', y: 90, color: '#2E86C1' },
            { name: 'PUL54', y: 24, color: '#EBF5FB' }
        ],
    }],
    credits: {
        enabled: false
    }

});

