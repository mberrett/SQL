/*
You are given a table, BST, containing two columns: N and P,
where N represents the value of a node in Binary Tree,
and P is the parent of N.

| N |   P   |
| 1 |   2   |
| 3 |   2   |
| 6 |   8   |
| 2 |   5   |
| 8 |   5   |
| 5 |  null |


Write a query to find the node type of Binary Tree
ordered by the value of the node.
Output one of the following for each node:

- Root: If node is root node.
- Leaf: If node is leaf node.
- Inner: If node is neither root nor leaf node.


SAMPLE OUTPUT:
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner

*/

SELECT N, IF(P IS NULL, 'Root',
             IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0, 'Inner','Leaf')
             )
FROM BST AS B
ORDER BY N;
