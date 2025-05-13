const cds = require("@sap/cds");
class SalesOrderService extends cds.ApplicationService {
  init() {
    const { ByDSalesOrders } = this.entities
    this.on('READ', 'ByDSalesOrders', async (req) => {
      const backendConnect = await cds.connect.to('salesorderodata')
      return backendConnect.run(req.query)
    });
    return super.init();
  }
}

module.exports = SalesOrderService;