const { syncDB } = require("../../tasks/sync-db");

describe('Pruebas en Sync DB', () => {
    test('BEBE EJECUTAR EL PROCESO 2 VECES', () => {
        syncDB();
        const times = syncDB();
        expect (times).toBe(2);
    })
})