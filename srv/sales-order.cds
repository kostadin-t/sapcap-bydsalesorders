using { salesorderodata as RemoteByDSalesOrders } from './external/sales-order';

service SalesOrdersList {
  entity ByDSalesOrders as projection on RemoteByDSalesOrders.SalesOrderCollection {
    key ObjectID as objectId,
    ID as ID,
    BuyerID as externalReference,
    FormattedName as buyerName,
    Name as description,
    PartyID as partyId,
    BuyerID as buyerId

  }
}