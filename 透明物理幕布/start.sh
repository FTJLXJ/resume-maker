#!/bin/bash

echo "=============================="
echo "  透明物理幕布 - 启动中..."
echo "=============================="
echo ""

# 检测 Python
if command -v python3 &>/dev/null; then
    PY=python3
elif command -v python &>/dev/null; then
    PY=python
else
    echo "[错误] 未找到 Python，请先安装 Python 3"
    exit 1
fi

echo "启动 HTTP 服务器..."
echo ""
echo "浏览器将自动打开，如未打开请访问:"
echo "  http://localhost:8080/transparent-cloth.html"
echo ""
echo "按 Ctrl+C 可停止服务器"
echo "=============================="

# 打开浏览器
if command -v open &>/dev/null; then
    open "http://localhost:8080/transparent-cloth.html"
elif command -v xdg-open &>/dev/null; then
    xdg-open "http://localhost:8080/transparent-cloth.html"
fi

$PY -m http.server 8080
