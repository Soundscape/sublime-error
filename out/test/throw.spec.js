(function(){var e,t;t=require("../"),t.mixins.value(),e=t.Throw,describe("Throw test suite",function(){return it("should throw when value is NULL",function(){var t;return t=null,expect(function(){return e.isNull(t,"value")}).toThrow()}),it("should NOT throw when value is NOT NULL",function(){var t;return t=42,expect(function(){return e.isNull(t,"value")}).not.toThrow()}),it("should throw when value is undefined",function(){var t;return t=void 0,expect(function(){return e.isUndefined(t,"value")}).toThrow()}),it("should NOT throw when value is NOT undefined",function(){var t;return t=null,expect(function(){return e.isUndefined(t,"value")}).not.toThrow()}),it("should throw when value is empty",function(){var t;return t="",expect(function(){return e.isEmpty(t,"value")}).toThrow()}),it("should NOT throw when value is NOT empty",function(){var t;return t=null,expect(function(){return e.isEmpty(t,"value")}).not.toThrow()}),it("should throw when value is either undefined or NULL",function(){var t,n;return t=void 0,n=null,expect(function(){return e.isNullOrUndefined(t,"value1")}).toThrow(),expect(function(){return e.isNullOrUndefined(n,"value2")}).toThrow()}),it("should NOT throw when value is NOT undefined nor NULL",function(){var t;return t=42,expect(function(){return e.isNullOrUndefined(t,"value")}).not.toThrow()}),it("should throw when value is either NULL or empty",function(){var t,n;return t="",n=null,expect(function(){return e.isNullOrEmpty(t,"value1")}).toThrow(),expect(function(){return e.isNullOrEmpty(n,"value2")}).toThrow()}),it("should NOT throw when value is NOT NULL nor empty",function(){var t;return t="lorem ipsum dolor sit amet",expect(function(){return e.isNullOrEmpty(t,"value")}).not.toThrow()})})}).call(this);