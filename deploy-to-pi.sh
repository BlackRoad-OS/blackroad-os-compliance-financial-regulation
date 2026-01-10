#!/bin/bash

# Deploy BlackRoad Compliance Dashboard to Pi Infrastructure
# Target: Alice Pi (192.168.4.49) via road-deploy system

DASHBOARD_DIR="$HOME/blackroad-os-compliance-financial-regulation/dashboards"
PI_USER="alexa"
PI_HOST="192.168.4.49"
APP_NAME="blackroad-compliance"
DEPLOY_PORT="8084"

echo "🖤🛣️ Deploying Compliance Dashboard to Pi Infrastructure..."

# Create deployment package
cd "$DASHBOARD_DIR"

# Create simple Node.js server for the dashboard
cat > server.js << 'SERVERJS'
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
SERVERJS

# Create package.json
cat > package.json << 'PACKAGEJSON'
{
  "name": "blackroad-compliance-dashboard",
  "version": "1.0.0",
  "description": "BlackRoad Financial Compliance Dashboard",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}
PACKAGEJSON

# Create PM2 ecosystem file
cat > ecosystem.config.js << 'ECOSYSTEM'
module.exports = {
  apps: [{
    name: 'blackroad-compliance',
    script: 'server.js',
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '200M',
    env: {
      NODE_ENV: 'production',
      PORT: 8084
    }
  }]
};
ECOSYSTEM

echo "✅ Created deployment files"

# Copy to Alice Pi
echo "📦 Copying to Alice Pi (192.168.4.49)..."
ssh $PI_USER@$PI_HOST "mkdir -p ~/apps/$APP_NAME"
scp -r compliance-dashboard.html DASHBOARD-METRICS-DATA.csv DASHBOARD-GUIDE.md server.js package.json ecosystem.config.js \
    $PI_USER@$PI_HOST:~/apps/$APP_NAME/

echo "🔧 Installing and starting on Pi..."
ssh $PI_USER@$PI_HOST << 'REMOTE'
cd ~/apps/blackroad-compliance
npm install
pm2 delete blackroad-compliance 2>/dev/null || true
pm2 start ecosystem.config.js
pm2 save
pm2 list
REMOTE

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🌐 Dashboard URLs:"
echo "  Local network: http://192.168.4.49:8084"
echo "  If domain configured: http://compliance.blackroad.io"
echo ""
echo "📊 Management:"
echo "  PM2 status: ssh alexa@192.168.4.49 'pm2 status'"
echo "  PM2 logs: ssh alexa@192.168.4.49 'pm2 logs blackroad-compliance'"
echo "  PM2 restart: ssh alexa@192.168.4.49 'pm2 restart blackroad-compliance'"
echo ""
echo "🖤🛣️ Compliance Dashboard live on Pi infrastructure!"
