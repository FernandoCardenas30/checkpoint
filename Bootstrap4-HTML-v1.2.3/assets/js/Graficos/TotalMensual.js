var valores = [];
for (i = 0; i <= 30; i++) {
    valores.push(Math.floor(Math.random() * 10000) + 10000);
}

Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'ABRIL-2018'
    },
    //subtitle: {
    //    text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    //},
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Ventas diarias'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Ventas: <b>{point.y:.1f} K</b>'
    },
    series: [{
        name: 'Sales',
        data: [
                ['01', valores[1]],
                ['02', valores[2]],
                ['03', valores[3]],
                ['04', valores[4]],
                ['05', valores[5]],
                ['06', valores[6]],
                ['07', valores[7]],
                ['08', valores[8]],
                ['09', valores[9]],
                ['10', valores[10]],
                ['11', valores[11]],
                ['12', valores[12]],
                ['13', valores[13]],
                ['14', valores[14]],
                ['15', valores[15]],
                ['16', valores[16]],
                ['17', valores[17]],
                ['18', valores[18]],
                ['19', valores[19]],
                ['20', valores[20]],
                ['21', valores[21]],
                ['22', valores[22]],
                ['23', valores[23]],
                ['24', valores[24]],
                ['25', valores[25]],
                ['26', valores[26]],
                ['27', valores[27]],
                ['28', valores[28]],
                ['29', valores[29]],
                ['30', valores[30]]
        ],
        dataLabels: {
            enabled: false,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }],
    credits: {
        enabled: false
    }
});