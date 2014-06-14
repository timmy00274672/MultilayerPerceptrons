MultilayerPerceptrons
==
![question](https://raw.githubusercontent.com/timmy00274672/MultilayerPerceptrons/master/img/question.jpg)

- Based on X1, train two 2-layer feedforward neural network(FNN) with two 
and four nodes in the hidden layer. All hidden layer nodes use the 
hyperbolic tangent(tanh) as the activation function, while the output node 
uses the linear activation function. Run the standard backpropagation (BP)
algorithm for 9000 iterations with a learning rate of 0.01. Computing the 
training and test errors (based on X1 and X2, respectively) and plot the 
training points as well as the decision regions formed by each network. 
Also plot the training error versus the number of iterations.
- Repeat (I) by employing the adaptive BP algorithm for 6000 iterations, with 
a learning rate of 0.0001 and ri=1.05, rd=0.7, and c=1.04.

## Howto
Just run `script.m`.

## Result
I use only 2000 iterations here because of demo.

Error versus the number of iterations:

![error_iteration](https://raw.githubusercontent.com/timmy00274672/MultilayerPerceptrons/master/img/error_iteration.jpg)

And we get:

```
	Test classification error rate: 4.28571%
```

Execute `showRegion` and get :

![region](https://raw.githubusercontent.com/timmy00274672/MultilayerPerceptrons/master/img/region.jpg)

### Adaptive BP algorithm

Use adaptive BP algorithm, just set the `params.adaptive = 1;`

Error versus the number of iterations:

![error_iteration_adaptive](https://raw.githubusercontent.com/timmy00274672/MultilayerPerceptrons/master/img/error_iteration_adaptive.jpg)

And we get:

```
	Test classification error rate: 0%
```

Execute `showRegion` and get :

![region_adaptive](https://raw.githubusercontent.com/timmy00274672/MultilayerPerceptrons/master/img/region_adaptive.jpg)


## Reference

- [Neural networks](http://lab.fs.uni-lj.si/lasin/?page_id=29&lang=en)
- [Visualize classifier decision boundaries in MATLAB](http://www.peteryu.ca/tutorials/matlab/visualize_decision_boundaries)