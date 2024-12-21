Official codes for "[Deep Learning Models for Water Stage Prediction in South Florida](https://arxiv.org/abs/2306.15907)."


## Environment
 - conda create -n `ENV_NAME` python=3.8 
 - conda activate `ENV_NAME` 
 - pip install -r requirements.txt
 - Note: pip install `package` if other packages are missing


## Directory
- **data**: all data files used
- **output**: saved experiment results
- **post_processing**: `ipynb` files for visualization and performance analysis 
  - `error_vs_time.ipynb` computes MAE, RMSE, NSE, KDE vs prediction lengths (Table 2 in paper)
  - `hecras_errors.ipynb` computes prediction errors of the HEC-RAS model
  - `beyond_thre_precent.ipynb` calculates the percentage of errors beyond [-0.5, 0.5] (Table 4 in paper)
  - `error_vs_location.ipynb` computes MAE vs locations (Tables 5, 6 in paper)
  - `violin_plots.ipynb` produces violin plots (Figures 4, 5 in paper)
  - `curve_plots.ipynb` visualizes the observed and predicted water levels (Figures 6, 7 in paper)
  - `p_values.ipynb` compute p values.
- **training**: `ipynb` files for training models
- **saved_model**: saved trained model
- **sensitivity**: `ipynb` files for experiments with added noise for forecast estimates
  - `noise20.ipynb` shows the results after adding 20% noise to future estimates (Table 3 in paper)
  - `noise40.ipynb` shows the results after adding 40% noise to future estimates

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
