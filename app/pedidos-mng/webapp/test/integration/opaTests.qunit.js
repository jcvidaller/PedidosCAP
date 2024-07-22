sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'avvale/pedidos/pedidosmng/test/integration/FirstJourney',
		'avvale/pedidos/pedidosmng/test/integration/pages/PedidosList',
		'avvale/pedidos/pedidosmng/test/integration/pages/PedidosObjectPage',
		'avvale/pedidos/pedidosmng/test/integration/pages/PosionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, PedidosList, PedidosObjectPage, PosionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('avvale/pedidos/pedidosmng') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePedidosList: PedidosList,
					onThePedidosObjectPage: PedidosObjectPage,
					onThePosionesObjectPage: PosionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);