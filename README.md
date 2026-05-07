# 📈 Stock War Room

純前端股市戰情系統 — 雙模式：**戰情室 (Watch)** + **OCC 作戰指揮中心 (Command Center)**。

## ✨ 特色

- **零後端**：單檔 HTML，直接開或丟到任何靜態主機
- **公開 API**：Yahoo Finance（含 CORS proxy fallback chain：直連 → corsproxy.io → allorigins）
- **JSON 驅動**：清單與戰略都用 JSON 設定，可拖拉上傳
- **OCC 模式**：對應個人投資戰略 schema（建倉進度、批次觸發、風險閘門、Interlocks）

## 🚀 部署到 Render

1. Fork 或 push 此 repo 到 GitHub
2. 到 https://dashboard.render.com/blueprints
3. New Blueprint Instance → 連接此 repo → Apply

`render.yaml` 已配置為 **Static Site**（免費方案、自動 HTTPS）。

## 🏃 本機跑

```bash
./serve.sh             # 開 http://localhost:8765
# 或
python3 -m http.server 8765
```

## 📂 檔案結構

| 檔案 | 用途 |
|---|---|
| `index.html` | 戰情室（指數 / 自選股 / 匯率） |
| `occ.html` | OCC 作戰指揮中心（建倉進度、批次觸發、風險閘門） |
| `watchlist.json` | 戰情室監控清單 |
| `state.json` | OCC 個人戰略（**已 gitignore，請自備**） |
| `render.yaml` | Render Blueprint |

## 🔒 隱私

`state.json` 含個人財務資料，**已加入 `.gitignore`**。線上版請使用「📂 載入 state.json」按鈕或拖拉檔案的方式載入，**不會上傳到伺服器**（純前端讀取）。

## 🎨 視覺慣例

紅漲綠跌（台股慣例）。

## 📜 授權

MIT
