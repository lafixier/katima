# Katima - 漢字 (旧字体/新字体) 用のツール/ライブラリ <!-- omit in toc -->

[![GitHub Repo stars](https://img.shields.io/github/stars/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/stargazers)
[![GitHub](https://img.shields.io/github/license/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/blob/develop/LICENSE)
![GitHub last commit](https://img.shields.io/github/last-commit/lafixier/katima?style=for-the-badge)
[![GitHub issues](https://img.shields.io/github/issues/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/pulls)

> **Warning**
> このプロジェクトは現在試験的な開発中です。
> インストールと使い方はまだ機能しません。

<!-- ここにGIFを挿入 -->

<div align="center">
  <table>
    <tr>
      <thead>
        <tr>
          <th colspan="2">言語</th>
        </tr>
      </thead>
      <tbody>
        <td>日本語 (このファイル)</td>
        <td>
          <a href="README.md">英語</a>
        </td>
      </tbody>
    </tr>
  </table>
</div>

## ToC <!-- omit in toc -->

- [1. 概要](#1-概要)
- [2. 機能](#2-機能)
- [3. インストール](#3-インストール)
  - [3.1. nimble経由](#31-nimble経由)
- [4. 使い方](#4-使い方)
  - [4.1. CLI](#41-cli)
- [5. ライセンス](#5-ライセンス)

## 1. 概要

Katima (**Ka**nji **Ti**me **Ma**chine) は、[旧字体](https://ja.wikipedia.org/wiki/旧字体)と[新字体](https://ja.wikipedia.org/wiki/新字体)の間で変換するための、Nimで書かれたツール/ライブラリです。

## 2. 機能

foo

## 3. インストール

### 3.1. nimble経由

```bash
nimble install katima
```

## 4. 使い方

### 4.1. CLI

```bash
echo "医学を学ぶ" | katima convert --oldCharFormsMode # 醫學を學ぶ
echo "医学を学ぶ" | katima c -o                       # 醫學を學ぶ
echo "醫學を學ぶ" | katima convert --newCharFormsMode # 医学を学ぶ
echo "醫學を學ぶ" | katima c -n                       # 医学を学ぶ
```

## 5. ライセンス

[MIT License](LICENSE)
