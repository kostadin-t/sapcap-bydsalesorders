using { salesorderodata } from './external/sales-order';

service SalesOrdersList {
  @sap.creatable: true
  @sap.updatable: true
  @sap.deletable: true
  @Capabilities.Insertable : true
  // @odata.draft.enabled: true
  entity SalesOrder as projection on salesorderodata.SalesOrderCollection;
}