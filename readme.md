
Official codes for "Deep Learning Models for Water Stage Prediction in South Florida."

## Environment
 - conda create -n `ENV_NAME` python=3.8 
 - conda activate `ENV_NAME` 
 - pip install -r requirements.txt
 - Note: pip install `package` if other packages are missing


## Directory
- **data**: all data files used
- **output**: experiment results
- **post_processing**: `ipynb` files for visualization and performance analysis
- **training**: `ipynb` files for training models
- **saved_model**: trained model
- **sensitivity**: `ipynb` files for experiments with added noise for forecast estimates

## Run
- train the models by running `ipynb` files under `training` folder
- reproduce the experiment results by running `ipynb` files under `post_processing` folder
