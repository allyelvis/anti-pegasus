# Anti-Pegasus App

## Overview

The Anti-Pegasus App is a comprehensive application designed to detect and mitigate threats using machine learning algorithms. It includes both a backend server built with Node.js and Python and a frontend application developed using Flutter.

## Features

- **Backend:**
  - Node.js server to handle API requests and interact with Python scripts.
  - Python machine learning model to analyze network activity and detect threats.

- **Frontend:**
  - Flutter application for monitoring threat status.
  - Real-time UI updates based on threat detection results.

## Installation

### Backend

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Anti-Pegasus App.git
   ```

2. Navigate to the backend directory:
   ```bash
   cd anti-pegasus-backend
   ```

3. Install Node.js dependencies:
   ```bash
   npm install
   ```

4. Train and save the machine learning model:
   ```bash
   python3 train_model.py
   ```

5. Start the Node.js server:
   ```bash
   node index.js
   ```

### Frontend

1. Navigate to the Flutter project directory:
   ```bash
   cd anti_pegasus_app
   ```

2. Install Flutter dependencies:
   ```bash
   flutter pub get
   ```

3. Run the Flutter application:
   ```bash
   flutter run
   ```

## Usage

- **Backend API:** 
  - Endpoint: 
  - Method: POST
  - Request Body: `{ "networkActivity": [ ... ] }`
  - Response: `{ "status": "SAFE" | "THREAT DETECTED" }`

- **Frontend Application:** 
  - The app will display real-time threat detection results.
  - Use the "Isolate Device" button to isolate detected threats.

## Contributing

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit your changes:
   ```bash
   git commit -am 'Add new feature'
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature
   ```
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, please contact [yourname@example.com](mailto:yourname@example.com).

