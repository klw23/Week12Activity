/**
 * @description Find all functions longer than 10 lines
 * @kind problem
 * @id javascript/find-functions-longer-than-10-lines
 * @problem.severity recommendation
 */
import javascript

/**
 * Holds if a function is longer than 10 lines.
 */

predicate isFunctionLongerThan10Lines(Function f) {
  f.getBody().getNumLines() > 10;
}

from Function function
where isFunctionLongerThan10Lines(function)
select function, "is a function that has longer than 10 lines"