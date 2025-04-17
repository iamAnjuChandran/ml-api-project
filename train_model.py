# train_model.py
from sklearn.datasets import fetch_california_housing
from sklearn.linear_model import LinearRegression
import joblib
import pandas as pd

# Load dataset
data = fetch_california_housing(as_frame=True)
X = data.data
y = data.target

# Train a regression model
model = LinearRegression()
model.fit(X, y)

# Save the model
joblib.dump(model, "app/model.joblib")
