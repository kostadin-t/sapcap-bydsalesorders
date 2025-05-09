const cds = require("@sap/cds");
const { ConnectBackend } = require("./lib/ConnectionHandler");
class SalesOrderService extends cds.ApplicationService {
    init() {
      const { SalesOrder } = this.entities
      this.on('READ', SalesOrder, ConnectBackend)
      return super.init();
    }
  }

  module.exports = SalesOrderService