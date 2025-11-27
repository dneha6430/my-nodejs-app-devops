const request = require("supertest");
const app = require("../src/app.js");

describe("GET /", () => {
  it("should return Hello message", async () => {
    const res = await request(app).get("/");
    expect(res.statusCode).toBe(200);
    expect(res.body.message).toBe("Hello from Express App!");
  });
});
