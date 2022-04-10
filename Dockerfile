# set base image (host OS)
FROM python:3.9-slim-buster

# set the working directory in the container
WORKDIR /code

COPY DataClean.py .
COPY countryoutlines.py .
COPY hansenhandler.py .
COPY tile.py .
COPY raw ./raw
COPY interim ./interim

# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir numpy
RUN pip install --no-cache-dir pandas
RUN pip install --no-cache-dir matplotlib
RUN pip install --no-cache-dir pycountry
RUN pip install --no-cache-dir rasterio
RUN pip install --no-cache-dir shapely
RUN pip install --no-cache-dir geopandas
