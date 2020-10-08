# snowball-pig
Use PIG image files on LÖVE2D

# Wait, what is a PIG file?
PIG stands for Pixel Image Grid and is a very simple implementation for drawing images from a data matrix.
It consists of two tables: color palette and pixel matrix

Below is an example of a PIG file:

```
{
  {
    {0,0,0},
    {255,176,177},
    {255,255,255},
    {100,0,2},
    {255,208,164}
  },
  {
    {2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2},
    {1,3,2,2,2,2,3,1},
    {2,2,5,5,5,5,2,2},
    {2,2,4,5,5,4,2,2},
    {2,2,5,5,5,5,2,2},
    {2,2,2,2,2,2,2,2}
  }
}
```

The above code renders the following image:


![Oinc!](/docs/images/piglet_on_mud.png)


