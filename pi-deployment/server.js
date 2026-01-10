const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 8084;

app.use(express.static(__dirname));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'compliance-dashboard.html'));
});

app.get('/health', (req, res) => {
    res.json({ status: 'ok', service: 'blackroad-compliance' });
});

app.listen(PORT, () => {
    console.log(`🖤🛣️ Compliance Dashboard on port ${PORT}`);
});
