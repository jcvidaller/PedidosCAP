using { avvale.pedidos as modelo } from '../db/modelo';

service PedidosService {
    @readeonly entity Moneda as projection on modelo.Moneda;
    entity Material as projection on modelo.Material;
    entity Pedidos as projection on modelo.Pedidos;

    action aprobarPedido();
}

annotate modelo.Material with @odata.draft.enabled;
annotate modelo.Pedidos with @odata.draft.enabled;


