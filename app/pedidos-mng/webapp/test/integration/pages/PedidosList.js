sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'avvale.pedidos.pedidosmng',
            componentId: 'PedidosList',
            contextPath: '/Pedidos'
        },
        CustomPageDefinitions
    );
});