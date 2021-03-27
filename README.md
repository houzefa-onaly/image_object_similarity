## Object similarity in images using Histogram of Gradient Orientation (HOG)

This is my implementation of a lab session at École Centrale de Lyon.  
Find the subject and the original paper here : [Click here](https://www.notion.so/Lab-session-on-Image-object-similarity-using-Histogram-of-Oriented-Gradients-98729d26464640d7903bf103da1cf738)

Given 2 objects, we compute a cosine similarity score between their HOG features.  

## Results :

Parameters used : nb_bins = 9, cell_width = 16, cell_height = 16  
Read the subject to find the meaning of these parameters.

| Images | Similarity score | 
| :-------------: | :-------------: |
| ![](https://i.ibb.co/vcjLWP3/hog-similar.png)  | 0.8556 |
| ![](https://i.ibb.co/YjT7pss/hog-different.png) | 0.5093  |
