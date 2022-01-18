import pandas as pd

sneaker_df = pd.read_csv("SneakerDataset.csv")

sneaker_df = sneaker_df.dropna() # Dropping null values

print ("Some statistics about Order Amount Field")

print (sneaker_df["order_amount"].describe())

print ("-----------------------------------------")

sneaker_df["per_sneaker_cost"] = sneaker_df["order_amount"]/sneaker_df["total_items"] # Creating new column for per sneaker amount 

aov_new_val = sneaker_df["per_sneaker_cost"].sum()/sneaker_df.shape[0] # AOV = total revenue/total orders

print ("Average Order Value per sneaker is $",aov_new_val)

#print (sneaker_df["order_amount"].mean())

#print (sneaker_df["order_amount"].median())

#print (sneaker_df["order_amount"].mode())
