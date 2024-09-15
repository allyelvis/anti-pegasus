from sklearn.ensemble import IsolationForest
import numpy as np
import pickle

# Example: Fake data representing network activity
X = np.random.rand(100, 5)
model = IsolationForest().fit(X)

# Save the model for later use
with open('threat_model.pkl', 'wb') as f:
    pickle.dump(model, f)
