sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'avvale/pedidos/materialesmng/test/integration/FirstJourney',
		'avvale/pedidos/materialesmng/test/integration/pages/MaterialList',
		'avvale/pedidos/materialesmng/test/integration/pages/MaterialObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaterialList, MaterialObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('avvale/pedidos/materialesmng') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaterialList: MaterialList,
					onTheMaterialObjectPage: MaterialObjectPage
                }
            },
            opaJourney.run
        );
    }
);