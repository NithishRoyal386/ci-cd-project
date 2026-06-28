mkdir scripts
cat > scripts/install.sh << 'EOF'
#!/bin/bash
sudo systemctl restart apache2
EOF
chmod +x scripts/install.sh
