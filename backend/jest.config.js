/** @type {import('ts-jest').JestConfigWithTsJest} */
module.exports = {
  preset: "ts-jest",
  testEnvironment: "allure-jest/node",
  modulePathIgnorePatterns: ["<rootDir>/dist/"],
  testEnvironmentOptions: {
    resultsDir: "./allure-results",
  },
  testMatch: ["**/*.spec.ts"],
};
