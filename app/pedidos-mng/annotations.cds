using PedidosService as service from '../../srv/servicio';
using from '../../db/modelo';
annotate service.Pedidos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Descripcion',
                Value : descripcion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Entrega',
                Value : fechaEntrega,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Posiciones',
            ID : 'Posiciones',
            Target : 'posiciones/@UI.LineItem#Posiciones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'descripcion',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'fechaEntrega',
            Value : fechaEntrega,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'PedidosService.EntityContainer/aprobarPedido',
            Label : 'Aprobar',
        },
    ],
);

annotate service.Posiones with @(
    UI.LineItem #Posiciones : [
        {
            $Type : 'UI.DataField',
            Value : material.nombre,
        },{
            $Type : 'UI.DataField',
            Value : material.tipo,
        },{
            $Type : 'UI.DataField',
            Value : material.precio,
        },{
            $Type : 'UI.DataField',
            Value : material.moneda_id,
            Label : 'Moneda',
        },{
            $Type : 'UI.DataField',
            Value : importe,
            Label : 'Importe',
        },]
);
annotate service.Pedidos with @(
    UI.HeaderInfo : {
        TypeName : 'Pedido',
        TypeNamePlural : 'Pedidos',
        Title : {
            $Type : 'UI.DataField',
            Value : descripcion,
        },
    }
);
annotate service.Pedidos with {
    descripcion @Common.FieldControl : #Mandatory
};
annotate service.Pedidos with {
    fechaEntrega @Common.FieldControl : #Mandatory
};
annotate service.Posiones with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : material_ID,
                Label : 'Material',
            },
            {
                $Type : 'UI.DataField',
                Value : cantidad,
                Label : 'Cantidad',
            },{
                $Type : 'UI.DataField',
                Value : material.precio,
            },
            {
                $Type : 'UI.DataField',
                Value : material.moneda_id,
                Label : 'Moneda',
            },
            {
                $Type : 'UI.DataField',
                Value : importe,
                Label : 'Importe',
            },],
    }
);
annotate service.Posiones with @(
    UI.HeaderInfo : {
        TypeName : 'Posición',
        TypeNamePlural : 'Posiciones',
        Title : {
            $Type : 'UI.DataField',
            Value : material.nombre,
        },
    }
);
annotate service.Posiones with {
    material @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Material',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : material_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Material with {
    ID @Common.Text : {
        $value : nombre,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.Material with {
    precio @Common.FieldControl : #ReadOnly
};
annotate service.Material with {
    moneda @Common.FieldControl : #ReadOnly
};
annotate service.Posiones with {
    importe @Common.FieldControl : #ReadOnly
};
