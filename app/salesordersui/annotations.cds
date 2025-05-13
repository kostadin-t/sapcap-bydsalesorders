using SalesOrdersList as service from '../../srv/sales-order';
annotate service.ByDSalesOrders with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'objectId',
                Value : objectId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'externalReference',
                Value : externalReference,
            },
            {
                $Type : 'UI.DataField',
                Label : 'buyerName',
                Value : buyerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'partyId',
                Value : partyId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'buyerId',
                Value : buyerId,
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
            Label : 'objectId',
            Value : objectId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'externalReference',
            Value : externalReference,
        },
        {
            $Type : 'UI.DataField',
            Label : 'buyerName',
            Value : buyerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
    ],
);

