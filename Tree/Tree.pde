/*  visualization of a tree
 *
 *
 *
 *
 *
 */
BinarySearchTree tree = new BinarySearchTree();

Class Node;
int size;
float scale;
void setup()
{
  //visualization setup
  //size(600, 600);
  fullScreen();
  background(0);
  // binary search tree
  //sizes
  size = 1000;
  scale = (height / size*log(size)) * 2;
  //data setup
  //Tree <Integer> tree = new Tree()<>;
  int [] treeData = new int[size];
  for (int i = 0; i < size; i++)
  {
    treeData[i] = (int) random(0, 1000);
    print(treeData[i] + " ");
  }
  //tree.insert(treeData[0]);
  for (int i = 0; i < size; i++)
  {
    tree.insert(treeData[i]);
  }
}

boolean done = false;
void draw()
{
  float x, y, gap;
  x = width/2;
  y = 30;
  gap = width/2;
  //only do this once
  while (!done)
  {
    tree.printRec(tree.getRoot(), x, y, gap);
    //tree.inorderRec(tree.getRoot());
    done = !done;
  }
}


// Java program to demonstrate
// insert operation in binary
// search tree
class BinarySearchTree {

  /* Class containing left
   and right child of current node
   * and key value*/
  class Node {
    int key;
    Node left, right;

    public Node(int item)
    {
      key = item;
      left = right = null;
    }
  }

  // Root of BST
  Node root;

  // Constructor
  BinarySearchTree() {
    root = null;
  }

  BinarySearchTree(int value) {
    root = new Node(value);
  }

  // This method mainly calls insertRec()
  void insert(int key) {
    root = insertRec(root, key);
  }
  Node getRoot() {
    return root;
  }
  /* A recursive function to
   insert a new key in BST */
  Node insertRec(Node root, int key)
  {

    /* If the tree is empty,
     return a new node */
    if (root == null) {
      root = new Node(key);
      return root;
    }

    /* Otherwise, recur down the tree */
    else if (key < root.key)
      root.left = insertRec(root.left, key);
    else if (key > root.key)
      root.right = insertRec(root.right, key);

    /* return the (unchanged) node pointer */
    return root;
  }

  // This method mainly calls InorderRec()
  void inorder() {
    inorderRec(root);
  }

  // A utility function to
  // do inorder traversal of BST
  void inorderRec(Node root)
  {
    if (root != null) {
      inorderRec(root.left);
      System.out.println(root.key);
      inorderRec(root.right);
    }
  }

  void printRec(Node root, float x, float y, float gapSize)
  {
    float newX, newY;
    if (root != null)
    {
      newY = y + scale;
      //gapSize = sqrt(gapSize)*5;
      gapSize /= 2;
      stroke(255);
      //point(x, y);
      text(root.key, x, y);


      newX = x - gapSize;
      printRec(root.left, newX, newY, gapSize);
      if (root.left != null)
      {
        line(x, y, newX, newY);
      }
      newX =x + gapSize;
      printRec(root.right, newX, newY, gapSize);
      if (root.right !=null)
      {
        line(x, y, newX, newY);
      }
    }
  }
}
// This code is contributed by Ankur Narain Verma





//initial attempt, without any help... got kinda bored, using online pseudocode from here on out
//class TreeNode<T> {
//  //tree class made from memory
//  private int data;
//  private TreeNode childLeft;
//  private TreeNode childRight;
//  private TreeNode parent;
//  //private boolean isLeft;

//  public TreeNode(int data)
//  {
//    this.data = data;
//    this.childLeft = null;
//    this.childRight = null;
//    this.parent = null;
//  }

//    public TreeNode(int data, TreeNode parent)
//  {
//    this.data = data;
//    this.childLeft = null;
//    this.childRight = null;
//    this.parent = parent;
//  }

//  public int getData()
//  {
//    return this.data;
//  }

//  public void setLeft(int data)
//  {
//    this.childLeft = new TreeNode(data);
//  }

//  public void setRight(int data)
//  {
//    this.childRight = new TreeNode(data);
//  }

//  public void setParent(TreeNode parent)
//  {
//    this.parent = parent;
//  }

//  public TreeNode getLeft()
//  {
//    return this.childLeft;
//  }

//  public TreeNode getRight()
//  {
//    return this.childRight;
//  }
//}

//class myTree<T> {
//  private TreeNode head;

//  public myTree()
//  {
//    this.head = null;
//  }

//  void setHead(int data)
//  {
//    this.head = new TreeNode(data);
//  }

//  void buildTree(int dataSet[])
//  {
//    this.setHead(dataSet[0]);
//    for (int i = 1; i  < dataSet.length - 1; i ++)
//    {
//      if (dataSet[i] > head.getData())
//      {
//      }
//    }
//  }


//  void addChild(int data)
//  {

//  }
//}
