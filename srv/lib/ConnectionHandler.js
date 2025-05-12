const cds = require("@sap/cds");

const ConnectBackend = async (req) => {
    const backendConnect = await cds.connect.to('salesorderodata')
    const tx = backendConnect.tx(req);
    console.log(req.query);
    return tx.run(req.query);
}

module.exports = { ConnectBackend };