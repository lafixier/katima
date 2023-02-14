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

|     Languages      |                      |
| :----------------: | :------------------: |
| 日本語 (This file) | [English](README.md) |

## ToC <!-- omit in toc -->

- [1. 概要](#1-概要)
- [2. 機能](#2-機能)
- [3. 使い方](#3-使い方)
  - [3.1. CLI](#31-cli)
    - [3.1.1. REPL](#311-repl)
    - [3.1.2. Convert](#312-convert)
  - [3.2. Library](#32-library)
- [4. インストール](#4-インストール)
  - [4.1. nimble経由](#41-nimble経由)
- [5. ライセンス](#5-ライセンス)

## 1. 概要

Katima (**Ka**nji **Ti**me **Ma**chine) は、[旧字体](https://ja.wikipedia.org/wiki/旧字体)と[新字体](https://ja.wikipedia.org/wiki/新字体)の間で変換するための、Nimで書かれたツール/ライブラリです。

## 2. 機能

foo

## 3. 使い方

ドキュメントは[docs](docs)ディレクトリに存在します。

### 3.1. CLI

#### 3.1.1. REPL

```bash
katima repl

```

#### 3.1.2. Convert

```bash
echo "医学を学ぶ" | katima convert --oldCharFormsMode # 醫學を學ぶ
echo "医学を学ぶ" | katima c -o                       # 醫學を學ぶ
echo "醫學を學ぶ" | katima convert --newCharFormsMode # 医学を学ぶ
echo "醫學を學ぶ" | katima c -n                       # 医学を学ぶ
echo "医學を学ぶ" | katima c --reversal               # 醫学を學ぶ
echo "医學を学ぶ" | katima c -r                       # 醫学を學ぶ
```

```bash
cat input_1.txt                                 # 医学を学ぶ
cat input_2.txt                                 # 醫學を學ぶ
cat input_3.txt                                 # 医學を学ぶ

katima convert --oldCharFormsMode "input_1.txt" # 醫學を學ぶ
katima c -o "input_1.txt"                       # 醫學を學ぶ
katima convert --newCharFormsMode "input_2.txt" # 医学を学ぶ
katima c -n "input_2.txt"                       # 医学を学ぶ
katima convert --newCharFormsMode "input_3.txt" # 醫学を學ぶ
katima c -n "input_3.txt"                       # 醫学を學ぶ
```

### 3.2. Library

```nim
import katima

echo "医学を学ぶ".toOldCharForms    # 醫學を學ぶ
echo "醫學を學ぶ".toNewCharForms    # 医学を学ぶ
echo "医学を学ぶ".toReversal        # 医学を学ぶ

echo "學".isOldCharForm            # true
echo "学".isOldCharForm            # false
echo "学".isNewCharForm            # true
echo "學".isNewCharForm            # false

import unicode

let kanji = "學学".toRunes
echo kanji[0].isOldCharForm        # true
echo kanji[1].isOldCharForm        # false
echo kanji[1].isNewCharForm        # true
echo kanji[0].isNewCharForm        # false
```

## 4. インストール

### 4.1. nimble経由

```bash
nimble install katima
```

## 5. ライセンス

[MIT License](LICENSE)
