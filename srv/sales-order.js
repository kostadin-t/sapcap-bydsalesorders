const cds = require("@sap/cds");
const { ConnectBackend } = require("./lib/ConnectionHandler");
class SalesOrderService extends cds.ApplicationService {
  init() {
    const { SalesOrder } = this.entities
    this.on('READ', SalesOrder, async (req) => {
      const where = req.query?.SELECT?.where;
    
      if (where) {
        for (let i = 0; i < where.length; i++) {
          // Look for: tolower(ID)
          if (
            where[i]?.func === 'tolower' &&
            where[i]?.args?.[0]?.ref?.[0] === 'ID'
          ) {
            // Replace the tolower(ID) with ID
            where[i] = { ref: ['ID'] };
          }
    
          // Also handle tolower('value') part of the condition
          if (
            where[i + 2]?.func === 'tolower' &&
            typeof where[i + 2].args?.[0]?.val === 'string'
          ) {
            where[i + 2] = where[i + 2].args[0]; // unwrap the value
          }
        }
      }
    
      return ConnectBackend(req); // continue with your existing backend call
    });
    return super.init();
  }
}

module.exports = SalesOrderService;