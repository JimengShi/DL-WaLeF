Official codes for "[Deep Learning Models for Water Stage Prediction in South Florida](https://arxiv.org/abs/2306.15907)."


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


## Study domain
<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/domain.png" alt="domian" width="600"/>
</div>


## Framework 
- Deep Learning
<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/dl.png" alt="course" width="600"/>
</div>

- HEC-RAS
<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/hec-ras.jpeg" alt="course" width="600"/>
</div>


## Results
<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig10.png" alt="course" width="600"/>
</div>

<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig11.png" alt="course" width="600"/>
</div>

<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig12.png" alt="course" width="600"/>
</div>
