const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const { PythonShell } = require('python-shell');

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.post('/checkThreat', (req, res) => {
    const { networkActivity } = req.body;

    // Python Shell to interact with Python code
    const options = {
        mode: 'text',
        pythonPath: '/usr/bin/python3', 
        scriptPath: './',
        args: [JSON.stringify(networkActivity)]
    };

    PythonShell.run('analyze_threat.py', options, (err, results) => {
        if (err) throw err;
        res.status(200).send({ status: results[0] });
    });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
