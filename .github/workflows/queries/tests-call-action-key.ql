/**
 * @description Find all tests that call functions that use pressActionKey
 * @kind problem
 * @id javascript/find-tests-call-functions-use-press-action-key
 * @problem.severity recommendation
 */

import javascript


predicate findTestsCallFunctionsUsePressActionKey(Function f) {
  exists(CallExpr pressActionCall |
    pressActionCall.getCalleeName() = "pressActionKey" and
    f.getBody().containsExpr(pressActionCall)
  )
}

from Function function
where findTestsCallFunctionsUsePressActionKey(function)
select function, "is a test that calls a function that uses pressActionKey."