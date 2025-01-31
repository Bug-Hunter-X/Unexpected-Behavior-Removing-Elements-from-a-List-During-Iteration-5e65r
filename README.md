# Unexpected Behavior Removing Elements from a List During Iteration in Dart

This repository demonstrates a subtle bug in Dart related to removing elements from a list while iterating over it using a `for` loop.  The standard `removeWhere` method works as expected, but manually removing elements within the loop leads to unexpected results.

The `bug.dart` file contains the code exhibiting the problem. The `bugSolution.dart` file provides a corrected approach.  The issue arises because modifying the list during iteration using the `remove` method invalidates the iterator. 

The example showcases how to avoid this problem by iterating over a copy of the list or using the `removeWhere` method.