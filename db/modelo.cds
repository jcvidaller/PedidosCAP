namespace avvale.pedidos;

using { cuid, managed } from '@sap/cds/common';


entity Moneda {
    key id: String(3);
    nombre: String;
    simbolo: String(1);
}

entity Material : cuid, managed {
    nombre: String;
    precio: Decimal;
    tipo: String;
    moneda: Association to one Moneda;
}

entity Posiones : managed {
    key id: UUID @Core.Computed;
    material: Association to one Material;
    cantidad: Decimal;
    importe: Decimal = cantidad * material.precio;
    pedido: Association to one Pedidos;
}

entity Pedidos : cuid, managed {
    descripcion: String;
    fechaEntrega: DateTime;
    posiciones: Composition of many Posiones on posiciones.pedido = $self;
}