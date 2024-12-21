Official codes for "[Deep Learning Models for Water Stage Prediction in South Florida](https://arxiv.org/abs/2306.15907)."

**Contact:** Jimeng Shi, PhD student at Florida International University (jshi008@fiu.edu)

## Environment
 - install Anaconda or Miniconda by following the steps in [https://docs.anaconda.com/anaconda/install/](https://docs.anaconda.com/anaconda/install/)
 - create a python environment by: conda create -n `ENV_NAME` python=3.8 
 - activate the created environment by: conda activate `ENV_NAME` 
 - install necessary packages for running this repository: pip install -r requirements.txt
 - Note: pip install `package` if other packages are missing


## Directory
- **data**: all data files used
- **output**: saved experiment results
- **post_processing**: performance analysis and visualization
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
South Florida is vulnerable to hurricane events with extremely heavy precipitation (Azzi et al., 2020). The Miami River is one of the largest rivers in South Florida emptying into the Biscayne Bay. The city of Miami with a sizable population and many commercial enterprises is located along the river. A schematic of the South Florida region is shown in Figure 1. The study area consists of 5.6 miles of the last part of the Miami River, its two tributaries: C4 (upper) and C6 (lower), and three water stations, S25A, S25B, and S26 located 1.13 miles, 0.94, and 5.61 miles upstream away from mainstream junctions of C6 and C4, respectively, and hydraulic structures (i.e., spillway gates, pumps) used to manage the flows. Pumps can allow additional discharge capacity during high tide or storm surge events. Water station S26 is a water station with a gated spillway and a set of pumps. Station S25B has two spillway gates that work independently and a set of pumps. The gate and pump flow measurements are the total flow through the gate and pump, respectively. Station S25A has a culvert structure (with a control gate), which is recorded. Stations S1 and S4 are water stations used to record and monitor the water stage. The mouth of the river is located on the Biscayne Bay, which demonstrates the downstream water stage is strongly influenced by the tides in Biscayne Bay. The hydraulic structures prevent seawater from flowing back from Biscayne Bay and thus significantly impact the river system's state.

<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/study_domain.jpg" alt="domian" width="600"/>
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


## Primary Results
<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig10.png" alt="course" width="600"/>
</div>

<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig11.png" alt="course" width="600"/>
</div>

<div align="center">
<img src="https://github.com/JimengShi/DL-WaLeF/blob/main/figures/fig12.png" alt="course" width="600"/>
</div>
