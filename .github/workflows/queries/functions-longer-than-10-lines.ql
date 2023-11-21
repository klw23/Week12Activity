/**
 * @name Find functions longer than 10 lines
 * @description Finds functions that have more than 10 lines of code, which might indicate complexity and potential refactor opportunities.
 * @kind problem
 * @id js/find-long-functions
 * @tags maintainability
 *       complexity
 */

import javascript

// A predicate that checks if a function's body is longer than 10 lines
predicate isFunctionLongerThan10Lines(Function f) {
  f.getBody().getNumLines() > 10
}

from Function f
where isFunctionLongerThan10Lines(f)
select f, f.getName() + " is longer than 10 lines."
