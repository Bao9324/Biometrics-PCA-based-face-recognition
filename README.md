# Biometrics-PCA-based-face-recognition
PCA-based face recognition
In this assignment, you will design a PCA-based face recognition system and evaluate its
performance. You will download a face database and using PCA, you will generate
feature vectors for each image. Once you have the feature vectors, you will generate
biometric templates for each user using some part of the data available for each user
(training set). Then, you will use the remaining feature vectors (test set) to generate inter- user (impostor) and intra-user (genuine) distributions. You may use simple Euclidian
distance to compare two feature vectors.
First, you will download the ORL face database form the web site:
http://www.cl.cam.ac.uk/research/dtg/attarchive/facedatabase.html
There are many other face databases that you may use. For more details on face databases
you may check: http://www.face-rec.org/databases/
After reading those face images using “imread” command in MATLAB, “princomp”
command will help you to perform PCA on this database. Please note that, although there
are efficient ways to perform 2-D PCA, simplest way to perform regular PCA requires
one-dimensional vectors.
Therefore, after reading images into 2D matrices using MATLAB, you will reshape (you
can use “reshape” command for this…) those matrices into 1D vectors by concatenating
rows (or columns). (NOTE: You will use all the available data to perform PCA)
Question-1: After you apply PCA, what is the dimension of the transformed (1D) image
vectors?
Question-2: The ORL database has 40 users and there are 10 samples for each user.
Using 6 of them, create templates for each user. Use the remaining 4 for testing (i.e.,
creating genuine and impostor distributions). How you create the template?
Question-3: Using first k components of the transformed feature vectors, determine the
EER value, EER(k). For different values of k, draw the plot EER vs. k for k=1, 5, 10,
15, … max possible k. Which value of k is the best? For the best value of k, plot the
genuine and impostor distributions and corresponding ROC curve.
Question-4: For the best value of k that you found in Q3, plot the genuine and impostor
distributions and corresponding ROC curve again. But this time, use 8 feature vectors
(for each user) to create the template and use the remaining 2 for testing. What is the
value of EER this time? Is it better/worse? Why?
Question-5: What other (than Euclidian distance) possible measure(s) you may use to
compare two feature vectors?
