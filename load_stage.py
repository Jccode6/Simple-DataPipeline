import pandas as pd
import sqlalchemy as db

df = pd.read_csv('/Documents/data_engineering/Sacremento Properties/Sacramentorealestatetransactions.csv')

engine = ('postgresql://postgres:ident@localhost:5432/Properties')

df.to_sql('property_staging', engine, schema='public',if_exists='replace')