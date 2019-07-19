# Matlab Implementation of Neural Networks
Matlab implementation of Neural Networks with computational results for Control System with five Ultrasonic Sensors.
<br/>[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1317896.svg)](https://doi.org/10.5281/zenodo.1317896)

### Reference to:
Valentyn N Sichkar. Matlab implementation of Neural Networks Results for Control System of five Ultrasonic sensors // GitHub platform. DOI: 10.5281/zenodo.1317896

### Related works:
* Sichkar V. N., Kolyubin S. A. Effect of various dimension convolutional layer filters on traffic sign classification accuracy. Scientific and Technical Journal of Information Technologies, Mechanics and Optics, 2019, vol. 19, no. 3, pp. (in English). DOI: <a href="https://doi.org/10.17586/2226-1494-2019-19-3-546-552" target="_blank">10.17586/2226-1494-2019-19-3-546-552</a> (Full-text available also here https://www.researchgate.net/profile/Valentyn_Sichkar)

* Sichkar V.N. Comparison analysis of knowledge based systems for navigation of mobile robot and collision avoidance with obstacles in unknown environment. St. Petersburg State Polytechnical University Journal. Computer Science. Telecommunications and Control Systems, 2018, Vol. 11, No. 2, Pp. 64–73. DOI: <a href="https://doi.org/10.18721/JCSTCS.11206" target="_blank">10.18721/JCSTCS.11206</a> (Full-text available also here https://www.researchgate.net/profile/Valentyn_Sichkar)

* The study of Semantic Web languages OWL and RDF for Knowledge representation of Alarm-Warning System is put in separate repository and is available here: https://github.com/sichkar-valentyn/Knowledge_Base_Represented_by_Semantic_Web_Language

* The study of Semantic Representation of knowledge and querying of it through owl files with SPARQL is put in separate repository and is available here: https://github.com/sichkar-valentyn/System_programming_for_SPARQL_querying_with_interface_development_by_html_files

* The study of Neural Networks for Computer Vision in autonomous vehicles and robotics is put in separate repository and is available here: https://github.com/sichkar-valentyn/Neural_Networks_for_Computer_Vision

## Description
System controls the statements around the object by checking the distances with five Ultrasonic Sensors. The Sensors work <b>Separately</b>, in <b>Pairs</b>, in <b>Triples</b>, in <b>Quad</b> and all <b>Five</b> together. The Neural Networks are implemented for all of these different approaches. Neural Networks show the results in form of <b>"Alarm"</b> and <b>"Warning"</b>. The intervals for each sensor in each communication form are shown in the figures below. The Neural Networks are already adjusted and all Weights and Biases are set. All Neural Networks have the same <b>Input Vector</b> which is the current value of each sensor.

## Content
Code (it'll send you to appropriate file):
* [NN_Matrices.m](https://github.com/sichkar-valentyn/Matlab_implementation_of_Neural_Networks/blob/master/NN_Matrices.m)

<br/>
Experimental results (figures and tables on this page):

* [An example of the execution in Matlab for input vector [10 10 10 10 10 1]](#an-example-of-the-execution-in-matlab-for-input-vector)
* [The Neural Network of five ultrasonic sensors working Separately](#the-neural-network-of-five-ultrasonic-sensors-working-separately)
* [Rules for Separate method](#rules-for-separate-method)
* [The Matrices for Separate method](#the-matrices-for-separate-method)
* [The Neural Network of five ultrasonic sensors working in Pairs](#the-neural-network-of-five-ultrasonic-sensors-working-in-pairs)
* [Rules for method in Pairs](#rules-for-method-in-pairs)
* [The Matrices for method in Pairs](#the-matrices-for-method-in-pairs)
* [The Neural Network of five ultrasonic sensors working in Triples](#the-neural-network-of-five-ultrasonic-sensors-working-in-triples)
* [Rules for method in Triples](#rules-for-method-in-triples)
* [The Matrices for method in Triples](#the-matrices-for-method-in-triples)
* [The Neural Network of five ultrasonic sensors working in Quad](#the-neural-network-of-five-ultrasonic-sensors-working-in-quad)
* [Rules for method in Quad](#rules-for-method-in-quad)
* [The Matrices for method in Quad](#the-matrices-for-method-in-quad)
* [The Neural Network of five ultrasonic sensors working in Five](#the-neural-network-of-five-ultrasonic-sensors-working-in-five)
* [Rules for method in Five](#rules-for-method-in-five)
* [The Matrices for method in Five](#the-matrices-for-method-in-five)

<br/>

## <a id="an-example-of-the-execution-in-matlab-for-input-vector">An example of the execution in Matlab for input vector [10 10 10 10 10 1]</a>
![Results](images/Results.png)

<br/>

## <a id="the-neural-network-of-five-ultrasonic-sensors-working-separately">The Neural Network of five ultrasonic sensors working Separately</a>
![NN_Separately](images/NN_Separately.png)

<br/>

## <a id="rules-for-separate-method">Rules for Separate method</a>
![Rules_Separately](images/Rules_Separately.png)

<br/>

## <a id="the-matrices-for-separate-method">The Matrices for Separate method</a>
![Matrices_Separately](images/Matrices_Separately.png)

<br/>

## <a id="the-neural-network-of-five-ultrasonic-sensors-working-in-pairs">The Neural Network of five ultrasonic sensors working in Pairs</a>
![NN_for_Pairs](images/NN_for_Pairs.png)

<br/>

## <a id="rules-for-method-in-pairs">Rules for method in Pairs</a>
![Rules_for_Pairs](images/Rules_for_Pairs.png)

<br/>

## <a id="the-matrices-for-method-in-pairs">The Matrices for method in Pairs</a>
![Matrices_for_Pairs](images/Matrices_for_Pairs.png)

<br/>

## <a id="the-neural-network-of-five-ultrasonic-sensors-working-in-triples">The Neural Network of five ultrasonic sensors working in Triples</a>
![NN_for_Triples](images/NN_for_Triples.png)

<br/>

## <a id="rules-for-method-in-triples">Rules for method in Triples</a>
![Rules_for_Triples](images/Rules_for_Triples.png)

<br/>

## <a id="the-matrices-for-method-in-triples">The Matrices for method in Triples</a>
![Matrices_for_Triples](images/Matrices_for_Triples.png)

<br/>

## <a id="the-neural-network-of-five-ultrasonic-sensors-working-in-quad">The Neural Network of five ultrasonic sensors working in Quad</a>
![NN_for_Quad](images/NN_for_Quad.png)

<br/>

## <a id="rules-for-method-in-quad">Rules for method in Quad</a>
![Rules_for_Quad](images/Rules_for_Quad.png)

<br/>

## <a id="the-matrices-for-method-in-quad">The Matrices for method in Quad</a>
![Matrices_for_Quad](images/Matrices_for_Quad.png)

<br/>

## <a id="the-neural-network-of-five-ultrasonic-sensors-working-in-five">The Neural Network of five ultrasonic sensors working in Five</a>
![NN_for_Five](images/NN_for_Five.png)

<br/>

## <a id="rules-for-method-in-five">Rules for method in Five</a>
![Rules_for_Five](images/Rules_for_Five.png)

<br/>

## <a id="the-matrices-for-method-in-five">The Matrices for method in Five</a>
![Matrices_for_Five](images/Matrices_for_Five.png)

<br/>

### MIT License
### Copyright (c) 2018 Valentyn N Sichkar
### github.com/sichkar-valentyn
### Reference to:
Valentyn N Sichkar. Matlab implementation of Neural Networks Results for Control System of five Ultrasonic sensors // GitHub platform. DOI: 10.5281/zenodo.1317896
