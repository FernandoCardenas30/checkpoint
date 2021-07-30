Highcharts.createElement('link', {
    href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
    rel: 'stylesheet',
    type: 'text/css'
}, null, document.getElementsByTagName('head')[0]);

// Add the background image to the container
Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
    proceed.call(this);
    this.container.style.background =
       'url(http://www.highcharts.com/samples/graphics/sand.png)';
});


Highcharts.theme = {
    
    chart: {
        backgroundColor: null,
        style: {
            fontFamily: 'Signika, serif'
        }
    },
    title: {
        style: {
            color: 'black',
            fontSize: '16px',
            fontWeight: 'bold'
        }
    },
    subtitle: {
        style: {
            color: 'black'
        }
    },
    tooltip: {
        borderWidth: 0
    },
    legend: {
        itemStyle: {
            fontWeight: 'bold',
            fontSize: '13px'
        }
    },
    xAxis: {
        labels: {
            style: {
                color: '#6e6e70'
            }
        }
    },
    yAxis: {
        labels: {
            style: {
                color: '#6e6e70'
            }
        }, stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
            }
        }
    },
    plotOptions: {
        series: {
            shadow:true,
            cursor: 'pointer',
            point: {
                events: {
                    click: function (e) {
                        switch (this.y) {
                            case 1:
                                window.location.href = 'PUL85VISTA1.html';
                                break;
                            case 4:
                                window.location.href = 'PUL85VISTA2.html';
                                break;
                            case 7:
                                window.location.href = 'PUL85VISTA4.html';
                                break;
                            case 9:
                                window.location.href = 'PUL85VISTA5.html';
                                break;
                        }
                    }
                }
            },
            marker: {
                lineWidth: 1
            }
        },
        candlestick: {
            lineColor: '#404048'
        },
        map: {
            shadow: false
        }
    },

    // Highstock specific
    navigator: {
        xAxis: {
            gridLineColor: '#D0D0D8'
        }
    },
    rangeSelector: {
        buttonTheme: {
            fill: 'white',
            stroke: '#C0C0C8',
            'stroke-width': 1,
            states: {
                select: {
                    fill: '#D0D0D8'
                }
            }
        }
    },
    scrollbar: {
        trackBorderColor: '#C0C0C8'
    },

    // General
    background2: '#E0E0E8'

};

// Apply the theme
Highcharts.setOptions(Highcharts.theme);


Highcharts.chart('container', {
    chart: {
        type: 'bar'
    },
    title: {
        text: ''
    },
    xAxis: {
        categories: ['PUL85', 'PUL91', 'PUL68', 'PUL86', 'PUL54']
    },
    yAxis: {
        min: 0,
        title: {
            text: 'ESTATUS CALIBRACIÓN'
        }
    },
    legend: {
        reversed: true
    },
    plotOptions: {
        series: {
            stacking: 'normal'
        }
    },
    series: [{
        name: 'VENCIDO',
        data: [1, 2, 0, 4, 6],
        color: '#E6B0AA'
    },{
        name: '1 SEMANA',
        data: [4, 2, 6, 3, 1],
        color: '#85C1E9'
    },{
        name: '1 MES',
        data: [4, 5, 4, 5, 7],
        color: '#3498DB'
    }, {
        name: '6 MESES',
        data: [7, 6, 5, 6, 4],
        color: '#2874A6'
    },{
        name: '1 AÑO',
        data: [9, 8, 7, 8, 2],
        color: '#1B4F72'
    }],
    credits: {
        enabled: false
    }
});