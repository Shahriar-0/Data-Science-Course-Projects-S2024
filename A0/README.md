# CA0 - Web Scraping and Introductory Data Analysis

## Table of Contents

- [How to Run](#how-to-run)

## How to Run

1. Create a virtual environment and activate it:

    Linux:

    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

    Windows:

    ```bat
    python -m venv venv
    venv\Scripts\activate
    ```

2. Install the requirements:

    ```bash
    pip install -r requirements.txt
    ```

    The notebook uses Selenium to scrape the data from the web. To use it, you need to have the Firefox driver installed. You can download it [here](https://github.com/mozilla/geckodriver/releases). After downloading, extract the file and move the `geckodriver` file to the `venv/bin` folder (Linux) or `venv/Scripts` folder (Windows). Also you can uncomment the line for installing the `geckodriver` in the notebook.
