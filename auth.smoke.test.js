const login = require("./auth");

test("Smoke Test - login admin/123 successfully", () => {
    expect(login("admin", "123")).toBe(true);
});
