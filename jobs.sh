
# version 0.1.1+39.g90eef9e

##################################
### DATASET: brouwer_clean
##################################

# Create folder structure. By default, the folder 'output' is used to store output.
mkdir output
mkdir output/simulation
mkdir output/simulation/brouwer_clean/


# Simulation.
# Make folders:
mkdir output/simulation/brouwer_clean/state_files

# All models based on logistic, nb, svm, rf & nn-2-layer and tf-idf, doc2vec & sbert. Excluding nb-doc2vec, nb-sbert and nn2layer-tfidf.
# Simulate runs, maps in alphabetical order:







# Classifier = logistic, Feature extraction = tfidf , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/logistic_tfidf
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/logistic_tfidf/state_brouwer_clean_logistic_tfidf.h5 --model logistic --query_strategy max --feature_extraction tfidf --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/logistic_tfidf/time.txt

asreview stat output/simulation/brouwer_clean/state_files/logistic_tfidf/state_brouwer_clean_logistic_tfidf.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/logistic_tfidf/stat.txt






# Classifier = logistic, Feature extraction = doc2vec , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/logistic_doc2vec
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/logistic_doc2vec/state_brouwer_clean_logistic_doc2vec.h5 --model logistic --query_strategy max --feature_extraction doc2vec --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/logistic_doc2vec/time.txt

asreview stat output/simulation/brouwer_clean/state_files/logistic_doc2vec/state_brouwer_clean_logistic_doc2vec.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/logistic_doc2vec/stat.txt






# Classifier = logistic, Feature extraction = sbert , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/logistic_sbert
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/logistic_sbert/state_brouwer_clean_logistic_sbert.h5 --model logistic --query_strategy max --feature_extraction sbert --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/logistic_sbert/time.txt

asreview stat output/simulation/brouwer_clean/state_files/logistic_sbert/state_brouwer_clean_logistic_sbert.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/logistic_sbert/stat.txt






# Classifier = nb, Feature extraction = tfidf , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/nb_tfidf
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/nb_tfidf/state_brouwer_clean_nb_tfidf.h5 --model nb --query_strategy max --feature_extraction tfidf --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/nb_tfidf/time.txt

asreview stat output/simulation/brouwer_clean/state_files/nb_tfidf/state_brouwer_clean_nb_tfidf.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/nb_tfidf/stat.txt





Skipped nb + doc2vec model





Skipped nb + sbert model






# Classifier = rf, Feature extraction = tfidf , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/rf_tfidf
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/rf_tfidf/state_brouwer_clean_rf_tfidf.h5 --model rf --query_strategy max --feature_extraction tfidf --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/rf_tfidf/time.txt

asreview stat output/simulation/brouwer_clean/state_files/rf_tfidf/state_brouwer_clean_rf_tfidf.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/rf_tfidf/stat.txt






# Classifier = rf, Feature extraction = doc2vec , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/rf_doc2vec
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/rf_doc2vec/state_brouwer_clean_rf_doc2vec.h5 --model rf --query_strategy max --feature_extraction doc2vec --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/rf_doc2vec/time.txt

asreview stat output/simulation/brouwer_clean/state_files/rf_doc2vec/state_brouwer_clean_rf_doc2vec.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/rf_doc2vec/stat.txt






# Classifier = rf, Feature extraction = sbert , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/rf_sbert
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/rf_sbert/state_brouwer_clean_rf_sbert.h5 --model rf --query_strategy max --feature_extraction sbert --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/rf_sbert/time.txt

asreview stat output/simulation/brouwer_clean/state_files/rf_sbert/state_brouwer_clean_rf_sbert.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/rf_sbert/stat.txt






# Classifier = svm, Feature extraction = tfidf , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/svm_tfidf
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/svm_tfidf/state_brouwer_clean_svm_tfidf.h5 --model svm --query_strategy max --feature_extraction tfidf --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/svm_tfidf/time.txt

asreview stat output/simulation/brouwer_clean/state_files/svm_tfidf/state_brouwer_clean_svm_tfidf.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/svm_tfidf/stat.txt






# Classifier = svm, Feature extraction = doc2vec , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/svm_doc2vec
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/svm_doc2vec/state_brouwer_clean_svm_doc2vec.h5 --model svm --query_strategy max --feature_extraction doc2vec --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/svm_doc2vec/time.txt

asreview stat output/simulation/brouwer_clean/state_files/svm_doc2vec/state_brouwer_clean_svm_doc2vec.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/svm_doc2vec/stat.txt






# Classifier = svm, Feature extraction = sbert , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/svm_sbert
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/svm_sbert/state_brouwer_clean_svm_sbert.h5 --model svm --query_strategy max --feature_extraction sbert --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/svm_sbert/time.txt

asreview stat output/simulation/brouwer_clean/state_files/svm_sbert/state_brouwer_clean_svm_sbert.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/svm_sbert/stat.txt





Skipped nn-2-layer + tfidf model






# Classifier = nn-2-layer, Feature extraction = doc2vec , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/nn-2-layer_doc2vec
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/nn-2-layer_doc2vec/state_brouwer_clean_nn-2-layer_doc2vec.h5 --model nn-2-layer --query_strategy max --feature_extraction doc2vec --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/nn-2-layer_doc2vec/time.txt

asreview stat output/simulation/brouwer_clean/state_files/nn-2-layer_doc2vec/state_brouwer_clean_nn-2-layer_doc2vec.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/nn-2-layer_doc2vec/stat.txt






# Classifier = nn-2-layer, Feature extraction = sbert , Query strategy = max
mkdir output/simulation/brouwer_clean/state_files/nn-2-layer_sbert
{ time asreview simulate data/brouwer_clean.csv -s output/simulation/brouwer_clean/state_files/nn-2-layer_sbert/state_brouwer_clean_nn-2-layer_sbert.h5 --model nn-2-layer --query_strategy max --feature_extraction sbert --n_queries min --init_seed 535 --seed 165 ; } 2> output/simulation/brouwer_clean/state_files/nn-2-layer_sbert/time.txt

asreview stat output/simulation/brouwer_clean/state_files/nn-2-layer_sbert/state_brouwer_clean_nn-2-layer_sbert.h5 --wss 95 --rrf 1 > output/simulation/brouwer_clean/state_files/nn-2-layer_sbert/stat.txt


#  Get plots
python scripts/get_plots.py
 
python scripts/get_plots.py --clas logistic
python scripts/get_plots.py --clas nb
python scripts/get_plots.py --clas rf
python scripts/get_plots.py --clas svm
python scripts/get_plots.py --clas nn-2-layer

python scripts/get_plots.py --feat tfidf
python scripts/get_plots.py --feat doc2vec
python scripts/get_plots.py --feat sbert

