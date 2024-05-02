import sqlalchemy as sal
import pymysql
from sqlalchemy import create_engine, text

# Create engine
engine = create_engine('mysql+pymysql://admin:password@endpointhere/myflixdb')

# Create connection
connection = engine.connect()

# Execute query
query = text("select * from movies")
result_proxy = connection.execute(query)

# Fetch all rows
data = result_proxy.fetchall()

# Close connection
connection.close()

# Print fetched data
for item in data:
    print(item)

##ubuntu Installation##

install python 3
apt update && apt install python3-pip -y

pip install sqlalchemy
pip install pymysql
