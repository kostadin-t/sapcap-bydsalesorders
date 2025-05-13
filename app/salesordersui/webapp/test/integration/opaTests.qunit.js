sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'salesordersui/test/integration/FirstJourney',
		'salesordersui/test/integration/pages/ByDSalesOrdersList',
		'salesordersui/test/integration/pages/ByDSalesOrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ByDSalesOrdersList, ByDSalesOrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('salesordersui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheByDSalesOrdersList: ByDSalesOrdersList,
					onTheByDSalesOrdersObjectPage: ByDSalesOrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);