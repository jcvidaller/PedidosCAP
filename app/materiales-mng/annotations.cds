using PedidosService as service from '../../srv/servicio';
annotate service.Material with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'precio',
                Value : precio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'tipo',
                Value : tipo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'moneda_id',
                Value : moneda_id,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Nombre',
            Value : nombre,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Precio',
            Value : precio,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tipo',
            Value : tipo,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Moneda',
            Value : moneda_id,
            ![@UI.Importance] : #High,
        },
    ],
);

annotate service.Material with {
    moneda @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Moneda',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : moneda_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombre',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'simbolo',
            },
        ],
    }
};

annotate service.Material with @(
    UI.SelectionFields : [
        nombre,
        precio,
        tipo,
    ]
);
annotate service.Material with {
    nombre @Common.Label : 'Nombre'
};
annotate service.Material with {
    precio @Common.Label : 'Precio'
};
annotate service.Material with {
    tipo @Common.Label : 'Tipo'
};
annotate service.Material with @(
    UI.HeaderInfo : {
        TypeName : 'Material',
        TypeNamePlural : 'Materiales',
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
    }
);
annotate service.Material with {
    moneda @Common.ValueListWithFixedValues : true
};
annotate service.Moneda with {
    id @Common.Text : nombre
};
