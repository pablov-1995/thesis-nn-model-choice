# Comparison between neural network models and clasical models for Active Learning applied to Systematic Reviewing
![alt text](https://zenodo.org/badge/DOI/10.5281/zenodo.5161100.svg)

The purpose of this study was to evaluate the performance of different classifiers and feature extraction strategies on active learning tasks applied to systematic reviewing. This repository contains the necessary scripts to run the simulation and obtain relevant information about each one (runtime, metrics and plots). The data used for the simulations was originally retrieved by Brouwer, Williams et al. The results are published in my thesis, "Evaluation of the performance of neural network models and classical models in the context of Active Learning for Systematic Reviewing". Simulations were run using an open source platform for applying active learning to systematic reviewing tasks, called ASReview ![alt text](https://raw.githubusercontent.com/asreview/asreview-artwork/e2e6e5ea58a22077b116b9c3d2a15bc3fea585c7/SVGicons/IconELAS/ELASeyes24px24px.svg).
## Installation

The scripts in this repository require Python 3.8.8+. Install the extra dependencies with (in the command line):

```
pip install -r requirements.txt
```

In addition to the required packages, some other files were necessary in order to complete the simulations.

First, a file in the repository needs to be modified:

* ```base.py```: replaces ```asreview/review/base.py```. Introduces a small modification to the early stopping option by stopping at 95% relevant records found instead of 100%.


Two additional files were created to generate the needed statefiles, data and plots.

* ```jobs.sh```: shell script used to create the folders and statefiles of the simulations. Additionally, text files containing the computational time and metrics for each run are generated in this script. Finally, a Python script is called to generate all necessary plots.
  * The following line of code is used for each simulation:
    ```
    { time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/{classifier}_{feature_strategy}/state_brouwer_clean_{classifier}_{feature_strategy}.h5 --model {classifier} --query_strategy max --feature_extraction {feature_strategy} --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/{classifier}_{feature_strategy}/time.txt
    ```
    ```asreview simulate``` is the program is to run the simulations. Several arguments are passed to it: the path to the dataset used, the path to the resulting statefile, the classifier, etc. For more information, refer to the [ASReview Documentation](https://asreview.readthedocs.io/en/latest/). Additionally, the function ```time``` is ran over the execution of ```asreview simulate```. This function tracks the time that the simulation takes to run completely. The output is specified in the second part of the line of code, which is a ```time.txt``` file inside the folder that corresponds to the specific simulation.
* ```get_plots.py```: script used to generate the plots. It must be in the same directory than ```jobs.sh```.


## Data

### Data collection
The data used for the simulations was originally retrieved by Brouwer, Williams et al. Their paper studied the impact of psychological factors belonging to different theories on depressive relapse. If you want to use this data in your work, please cite the original publication:

_Brouwer, M. E., Williams, A. D., Kennis, M., Fu, Z., Klein, N. S., Cuijpers, P., & Bockting, C. L. H. (2019). Psychological theories of depressive relapse and recurrence: A systematic review and meta-analysis of prospective studies. Clinical Psychology Review, 74, 101773. https://doi.org/10.1016/j.cpr.2019.101773_

### Data preprocessing
The data needed to be preprocessed by the ASReview research team. First, there were some publications whose abstract was missing. Many of them were found and imported to the dataset. Additionally, there were three relevant records that were missing. After consulting the owner of the dataset, they were manually added. Finally, the data were spread out in different subsets that were merged into a unique csv file that could be used for simulations. The final dataset was composed of 50936 records, 63 of which were labelled as relevant. Their code for preprocessing is included in the following repository:

_ASReview. Preprocessing systematic review data of Brouwer et al. (2019) for use in ASReview (2021). Available in https://github.com/asreview/paper-depression-brouwer-preprocessing#preprocessing-systematic-review-data-of-brouwer-et-al-2019-for-use-in-asreview_

In order to make the simulations for this study possible, some additional preprocessing was needed next to the one that was done priorly. The dataset contained many rows with repeated generic titles, such as “Depression.” or “No Title”. They were kept as long as their corresponding abstract provided useful information for the model (was not an NA). Rows that had the same title, authors and abstract were dropped, keeping only the first occurrence of the row. After these two steps, the number of records of the dataset was 48977, 62 of which were labelled as relevant. To run this script on the original csv to get the postprocessed csv, run the following line of code in the command line:
```
python preprocessing_data.py
```
The data processed by ASReview ```brouwer_2019.csv``` is placed inside the folder original_dataset. After running the script, a new file ```brouwer_clean.csv``` will be saved in the folder data.

## Simulation

The simulation consisted of one run for each possible combination of classifier and feature extraction strategy. A seed was used for the initialization of the prior inclusions, and another seed was used for the initialization of the models. 

To obtain the result of the simulations, run this on your terminal: 

```
sh jobs.sh
```

The statefiles, and text files containing metrics are stored in a new folder named `output`. Plots are image files stored in a new folder called `plots`. 

The raw `h5` files are 37.2Gb and are available on request, see the contact details. However, it is straightforward to obtain the results by running the simulation again by using ASReview v0.17. Seed values are set in  `jobs.sh`. 

## Licence 

The content in this repository is published under the MIT license.

## Contact

For any questions or remarks, please send an email to pablovizan@gmail.com.
