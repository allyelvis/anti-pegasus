import pickle
import sys
import json

# Load the pre-trained model
with open('threat_model.pkl', 'rb') as f:
    model = pickle.load(f)

# Get network activity data from Node.js
network_activity = json.loads(sys.argv[1])

# Predict if the activity is malicious
prediction = model.predict([network_activity])[0]

# Return result to Node.js
if prediction == -1:
    print('THREAT DETECTED')
else:
    print('SAFE')
