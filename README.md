# Katima - Tool/Library for Kanji (Kyūjitai/Shinjitai) <!-- omit in toc -->

[![GitHub Repo stars](https://img.shields.io/github/stars/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/stargazers)
[![GitHub](https://img.shields.io/github/license/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/blob/develop/LICENSE)
![GitHub last commit](https://img.shields.io/github/last-commit/lafixier/katima?style=for-the-badge)
[![GitHub issues](https://img.shields.io/github/issues/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/lafixier/katima?style=for-the-badge)](https://github.com/lafixier/katima/pulls)

> **Warning**
> This project is currently in pilot development.
> Installation and usage do not work yet.

<!-- ここにGIFを挿入 -->

|        Languages         |                     |
| :----------------------: | :-----------------: |
| [日本語](./README_ja.md) | English (This file) |

## ToC <!-- omit in toc -->

- [1. About](#1-about)
- [2. Features](#2-features)
- [3. Usage](#3-usage)
  - [3.1. CLI](#31-cli)
    - [3.1.1. REPL](#311-repl)
    - [3.1.2. Convert](#312-convert)
  - [3.2. Library](#32-library)
- [4. Installation](#4-installation)
  - [4.1. Via nimble](#41-via-nimble)
    - [4.1.1. Install choosenim](#411-install-choosenim)
      - [4.1.1.1. On Unix/Linux](#4111-on-unixlinux)
      - [4.1.1.2. On Windows](#4112-on-windows)
    - [4.1.2. Install katima](#412-install-katima)
- [5. License](#5-license)

## 1. About

Katima (**Ka**nji **Ti**me **Ma**chine) is a tool/library written in Nim to convert between [kyūjitai](https://en.wikipedia.org/wiki/Ky%C5%ABjitai) (old character forms) and [shinjitai](https://en.wikipedia.org/wiki/Shinjitai) (new character forms).

## 2. Features

foo

## 3. Usage

The documentation is exists in the [docs](docs) directory.

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

## 4. Installation

### 4.1. Via nimble

You can use [nimble](https://github.com/nim-lang/nimble) by installing [choosenim](https://github.com/dom96/choosenim).

#### 4.1.1. Install choosenim

##### 4.1.1.1. On Unix/Linux

```bash
# If you use curl
curl https://nim-lang.org/choosenim/init.sh -sSf | sh

# If you use wget
wget -qO - https://nim-lang.org/choosenim/init.sh | sh
```

##### 4.1.1.2. On Windows

Please see [choosenim#windows](https://github.com/dom96/choosenim#windows).

#### 4.1.2. Install katima

```bash
nimble install katima
```

## 5. License

[MIT License](LICENSE)
