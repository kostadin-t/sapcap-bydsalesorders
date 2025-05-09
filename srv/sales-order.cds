using { salesorderodata } from './external/sales-order';

service SalesOrdersList {
  entity SalesOrder as projection on salesorderodata.SalesOrderCollection;
}
