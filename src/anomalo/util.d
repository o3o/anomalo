module anomalo.util;

Foo toJsJson(string type, Args...)(string id, Args args) {
   static if (type == "int" || type == "outcome") {
      return Json(["id" : Json(id), "type" : Json(type), "value" : Json(0),]);
   } else {
      static assert(0, "invalid type");
   }
}

unittest {
   import std.stdio;
   writeln(toJsJson!"int"("a"));
}
