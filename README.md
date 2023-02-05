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

<div align="center">
  <table>
    <tr>
      <thead>
        <tr>
          <th colspan="2">Languages</th>
        </tr>
      </thead>
      <tbody>
        <td>
          <a href="README_ja.md">Japanese</a>
        </td>
        <td>English (This file)</td>
      </tbody>
    </tr>
  </table>
</div>

## ToC <!-- omit in toc -->

- [1. About](#1-about)
- [2. Features](#2-features)
- [3. Installation](#3-installation)
  - [3.1. Via nimble](#31-via-nimble)
- [4. Usage](#4-usage)
  - [4.1. CLI](#41-cli)
- [5. License](#5-license)

## 1. About

Katima (**Ka**nji **Ti**me **Ma**chine) is a tool/library written in Nim to convert between [kyūjitai](https://en.wikipedia.org/wiki/Ky%C5%ABjitai) (old character forms) and [shinjitai](https://en.wikipedia.org/wiki/Shinjitai) (new character forms).

## 2. Features

foo

## 3. Installation

### 3.1. Via nimble

```bash
nimble install katima
```

## 4. Usage

### 4.1. CLI

```bash
echo "医学を学ぶ" | katima convert --oldCharFormsMode # 醫學を學ぶ
echo "医学を学ぶ" | katima c -o                       # 醫學を學ぶ
echo "醫學を學ぶ" | katima convert --newCharFormsMode # 医学を学ぶ
echo "醫學を學ぶ" | katima c -n                       # 医学を学ぶ
```

```bash
katima convert --oldCharFormsMode "input.txt"
katima c -o "input.txt"
katima convert --newCharFormsMode "input.txt"
katima c -n "input.txt"
```

## 5. License

[MIT License](LICENSE)
