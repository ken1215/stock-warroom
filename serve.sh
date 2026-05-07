#!/usr/bin/env bash
# 啟動本地伺服器（避免 file:// 抓不到 watchlist.json）
cd "$(dirname "$0")"
PORT="${1:-8765}"
echo "👉 開啟 http://localhost:$PORT"
python3 -m http.server "$PORT"
