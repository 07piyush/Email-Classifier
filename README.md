# Email-Classifier

Classification using Support Vector Machine, used Linear Kernel to learn the best fitting hyperplane.
Almost all of email services provides Spam filters that are able to classify an email as spam or not spam.

The Project consists of four main parts:
  1) Email Preprocessing
  2) Features Extraction from Emails
  3) Train SVM
  4) Prediction
 
# Email Preprocessing -
  To classify an email first the email is needed to be converted into a input feature vector.
  An email header consists of body and sender reciever details, all we need is the body of mail.
  The body of an email is a paragraph consisting of sentences which can not directly be used to classify.
  We find some key words in a mail body that may hint towards a spam or not spam mail.
  Some important preprocessing envolves Lower-Casing, Normalizing unnecessory elements, Word Stemming.
  
# Features Extraction from Emails -
  Ones the preprocessing is done, we have the words left which are again needed to be filtered so that only valuable words are selected       that will be used in as input feature to our SVM.
  We have chosen only the top 100 most frequently occuring words as our set of features considered The vocabulary list used in this project   is referred from SpamAssassin Public Corpus.
  The feature vector is a 1899 dimensional vector.
  This step get a boolean feature vector that indicates 1 if that word exists in vocab list.
  
 # Train SVM -
  spamTrain.mat contains 4000 training examples of spam
  and non-spam email, while spamTest.mat contains 1000 test examples.
  We have Trained a Linear SVM for this particular classification problem.
  
  
