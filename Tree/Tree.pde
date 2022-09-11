/*  visualization of a tree
 *
 *
 *
 *
 *
 */

void setup()
{
  //visualization setup
  size(600, 600);


  //sizes
  int size = 100;

  //data setup
  //Tree <Integer> tree = new Tree()<>;
  int [] treeData = new int[size];
  for (int i = 0; i < size; i++)
  {
    treeData[i] = (int) random(0, 500);
    print(treeData[i] + " ");
  }
}


void draw()
{
}

class TreeNode<T> {
  //tree class made from memory
  private int data;
  private TreeNode childLeft;
  private TreeNode childRight;
  private TreeNode parent;
  //private boolean isLeft;
  
  public TreeNode(int data)
  {
    this.data = data;
    this.childLeft = null;
    this.childRight = null;
    this.parent = null;
  }
  
    public TreeNode(int data, TreeNode parent)
  {
    this.data = data;
    this.childLeft = null;
    this.childRight = null;
    this.parent = parent;
  }

  public int getData()
  {
    return this.data;
  }
  
  public void setLeft(int data)
  {
    this.childLeft = new TreeNode(data);
  }
  
  public void setRight(int data)
  {
    this.childRight = new TreeNode(data);
  }

  public void setParent(TreeNode parent)
  {
    this.parent = parent;
  }

  public TreeNode getLeft()
  {
    return this.childLeft;
  }

  public TreeNode getRight()
  {
    return this.childRight;
  }
}

class Tree<T> {
  private TreeNode head;

  public Tree()
  {
    this.head = null;
  }

  void setHead(int data)
  {
    this.head = new TreeNode(data);
  }

  void buildTree(int dataSet[])
  {
    this.setHead(dataSet[0]);
    for (int i = 1; i  < dataSet.length - 1; i ++)
    {
      if (dataSet[i] > head.getData())
      {
      }
    }
  }
  
  
  void addChild(int data)
  {
    
  }
}
