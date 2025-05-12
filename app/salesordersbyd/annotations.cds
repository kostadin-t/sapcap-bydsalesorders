using SalesOrdersList as service from '../../srv/sales-order';
annotate service.SalesOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ObjectID',
                Value : ObjectID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BuyerID',
                Value : BuyerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PartyID',
                Value : PartyID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormattedName',
                Value : FormattedName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
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
            Label : 'ObjectID',
            Value : ObjectID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BuyerID',
            Value : BuyerID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PartyID',
            Value : PartyID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FormattedName',
            Value : FormattedName,
        },
    ],
);

