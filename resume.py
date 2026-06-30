import pandas as pd 
df = pd.read_csv("C:\\Resume Job Matching Analytics Dashboard\\resume dataset.csv")

print("\nmissing value:")

print("shape:",df.shape)

print(df.head())

print(df.isnull().sum())

print("\nDuplicate Rows:")

print(df.duplicated().sum())

print("\nDataset Information:\n")

print(df.info())

print("\nCategorical Columns:\n")

print (df.select_dtypes(include="object").columns)

print ("\neducation level")

print (df["education level"].value_counts())

print ("\nuniversity tier")

print (df["university tier"].value_counts())

print("\ncompany type")

print (df["company type"].value_counts())

numeric_columns = df.select_dtypes(include="number").columns

print(df[numeric_columns].describe())

print(df.corr(numeric_only=True))

df.to_csv("resume_dataset_cleaned.csv", index=False)

print("Cleaned Dataset Saved Successfully")

from sqlalchemy import create_engine 

df.to_csv("Resume Job Matching Analytics.csv", index=False)

engine = create_engine("mysql+mysqlconnector://root:liveptrak@127.0.0.1:3306/Resume Analytics")

df.to_sql(
    name="data",
    con=engine,
    if_exists="replace",
    index=False
)

print (df.isnull().sum())

print("Data successfully loaded into MySQL!")

