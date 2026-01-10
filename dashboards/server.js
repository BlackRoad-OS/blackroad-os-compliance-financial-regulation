const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 8084;

// Serve static files
app.use(express.static(__dirname));

// Serve dashboard
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'compliance-dashboard.html'));
});

// Health check
app.get('/health', (req, res) => {
    res.json({ status: 'ok', service: 'blackroad-compliance-dashboard' });
});

app.listen(PORT, () => {
    console.log(`🖤🛣️ Compliance Dashboard running on port ${PORT}`);
});
