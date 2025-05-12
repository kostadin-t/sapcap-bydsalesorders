sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/salesordersbyd/test/integration/FirstJourney',
		'ns/salesordersbyd/test/integration/pages/SalesOrderList',
		'ns/salesordersbyd/test/integration/pages/SalesOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrderList, SalesOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/salesordersbyd') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrderList: SalesOrderList,
					onTheSalesOrderObjectPage: SalesOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);