# ADA-Sorting-methods
In computer science, a sorting algorithm is an algorithm that puts elements of a list in a certain order. The most frequently used orders are numerical order and lexicographical order. Efficient sorting is important for optimizing the efficiency of other algorithms (such as search and merge algorithms) that require input data to be in sorted lists. Sorting is also often useful for canonicalizing data and for producing human-readable output. More formally, the output of any sorting algorithm must satisfy two conditions:

- 1º The output is in nondecreasing order (each element is no smaller than the previous element according to the desired total order);
- 2º The output is a permutation (a reordering, yet retaining all of the original elements) of the input.

Further, the input data is often stored in an array, which allows random access, rather than a list, which only allows sequential access; though many algorithms can be applied to either type of data after suitable modification.

This project contains three of the most basic sorting algorithms.

## Insertion sort
Insertion sort is a simple sorting algorithm that is relatively efficient for small lists and mostly sorted lists, and is often used as part of more sophisticated algorithms. 

It works by taking elements from the list one by one and inserting them in their correct position into a new sorted list similar to how we put money in our wallet. 

In arrays, the new list and the remaining elements can share the array's space, but insertion is expensive, requiring shifting all following elements over by one. Shellsort is a variant of insertion sort that is more efficient for larger lists.
 
## Selection sort
Selection sort is an in-place comparison sort. It has O(n2) complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort. 

Selection sort is noted for its simplicity, and also has performance advantages over more complicated algorithms in certain situations.

The algorithm finds the minimum value, swaps it with the value in the first position, and repeats these steps for the remainder of the list. It does no more than n swaps, and this is useful where swapping is very expensive.

## Bubble sort
Bubble sort is a simple sorting algorithm. The algorithm starts at the beginning of the data set. It compares the first two elements, and if the first is greater than the second, it swaps them. 

It continues doing this for each pair of adjacent elements to the end of the data set. It then starts again with the first two elements, repeating until no swaps have occurred on the last pass. This algorithm's average time and worst-case performance is O(n2), so it is rarely used to sort large, unordered data sets. Bubble sort can be used to sort a small number of items (where its asymptotic inefficiency is not a high penalty). 

Bubble sort can also be used efficiently on a list of any length that is nearly sorted (that is, the elements are not significantly out of place). For example, if any number of elements are out of place by only one position, bubble sort's exchange will get them in order on the first pass, the second pass will find all elements in order, so the sort will take only 2n time.

## Structure
- insertion_sort
- bubble_sort 
- selection_sort 
#### Functions
- moveright ----------> Moves the desired position to the right.
- searchinsertion ----> Find the position to insert an element.
- searchmin ----------> Find the minimum element.
- exchange -----------> Exchange two items of the same vector.

## Attention
The files must be in the same folder for it to work properly, if the folder has more than 16 characters or spaces in the name it may not work

## License
[MIT](https://choosealicense.com/licenses/mit/)
