# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概览

个人项目工作区，包含两个主要项目和一些个人文件。

## 简历生成器

`简历生成器.html` — 纯前端单页简历制作工具。用户填写表单后实时预览，支持导出 HTML 和 PDF。

- **启动**: 直接双击打开 HTML 文件
- **技术**: 纯 HTML/CSS/JS，零依赖，无构建工具
- **外部库**: mammoth.js（CDN，用于解析 .docx 文件）
- **数据**: 表单内容存浏览器 localStorage，不上传服务器
- **设计文档**: `docs/superpowers/specs/2026-06-04-resume-generator-design.md`

## 透明物理幕布

`透明物理幕布/` — p5.js 交互式物理模拟（透明布帘效果）。

- **入口**: `透明物理幕布/transparent-cloth.html`
- **依赖**: `透明物理幕布/p5.min.js`（本地引入）

## 个人文件

- `heart_curve.m` — MATLAB 心形曲线脚本
- `简历-*.html/md/pdf/docx` — 个人简历源文件，勿随意修改
