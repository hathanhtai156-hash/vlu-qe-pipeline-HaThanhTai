const login = require("./auth");

describe("Regression Test - Login", () => {

    test("Login successfully with admin/123", () => {
        expect(login("admin", "123")).toBe(true);
    });

    test("Wrong password", () => {
        expect(login("admin", "456")).toBe(false);
    });

    test("Empty username", () => {
        expect(login("", "123")).toBe(false);
    });

    test("Password contains special characters", () => {
        expect(login("admin", "12@3")).toBe(false);
    });

    test("Locked account", () => {
        expect(login("locked", "123")).toBe(false);
    });

});
