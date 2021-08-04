import pandas as pd

# Load data
df = pd.read_csv('original_dataset/brouwer_2019')

# Drop (title, author, abstract) duplicates
df.drop_duplicates(subset=['title', 'author', 'abstract'], inplace=True)

# Drop rows of generic name papers with missing abstract
df = df[~(df.title.isin(['Depression.', 'No Title', 'Editorial.', 'Introduction.', 'Abstracts']) & df.abstract.isna())]

# Save resulting dataset
df.to_csv('data/brouwer_clean.csv')