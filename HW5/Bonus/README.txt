Following changes to the train.ipynb
- imported SGD package from keras.optimizers
- nb_train_samples = 2139
- nb_validation_samples = 861
- batch_size = 20
- Activation to softmax from sigmoid
- Dense parameter to 3 from 1
- class_mode='categorical' for both training and validation

Following changes were made to classify.ipynb
- imported SGD package from keras.optimizers
- Activation to softmax from sigmoid
- Dense parameter to 3 from 1
- print(result) instead of print(result[0][0])
