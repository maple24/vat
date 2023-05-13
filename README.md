<p align='center'>
Robotic Process Automation Framework<b>(RPAF)</b><br>
</p>

<p align='center'>
<b>English</b> | <a href="README.zh-cn.md">简体中文</a>
</p>

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

## Movitation
1. Run functional test with RF, which has sudo-code like sytax and can generate beautiful report automatically.
2. A pressure test is just running one functional test multiple times with no extra effort.
3. Easy to debug with out-of-box logger tools, and can be easily parsed or data-analysed afterwards.
4. Test cases are compatiable with both RF or Python.
5. Hardwares are seperated from framework which can be called with APIs.
6. Email and RQM APIs are well structured for efficient-first purpose.

## Prerequisites
- python >= 3.8

## Quick start
1. clone project
```sh
git clone https://github.com/maple24/vat.git
```
2. create python virtual environment
```sh
cd vat
python -m venv .venv
```
3. activate venv and install dependencies
```sh
.venv/scripts/activate
pip install -r requirements.txt
```
4. run HelloWorld.bat and check logs in /log

## Features
- ⚙️Python code formatter with [Black](https://black.readthedocs.io/en/stable/)
- ⚡️An extremely fast Python linter [Ruff](https://beta.ruff.rs/docs/)
- 📤RQM API
- 📧Mail with smpt server
- 🤖Run test cases with [Robot Framework](https://robotframework.org/)