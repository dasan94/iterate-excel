# Learning Project: Iterating over Excel with Robot Framework

This project aims to learn and demonstrate how to use **Robot Framework** to iterate through an Excel file and process its data. Python is used as the base language, along with specific libraries for handling Excel files.

## Table of Contents

1. [Introduction](#introduction)  
2. [Prerequisites](#prerequisites)  
3. [Installation](#installation)  
5. [Usage](#usage)  
7. [Technologies Used](#technologies-used)  
8. [Contributing](#contributing)  
9. [License](#license)  

---

## Introduction

This project demonstrates how to use **Robot Framework** to automate tasks related to reading and processing data stored in an Excel file.

The basic flow includes:  
- Reading data from an Excel file.  
- Iterating over rows or columns to extract and process information.  
- Generating reports or logs based on the data.

## Prerequisites

Before starting, ensure you have the following installed:  

- **Python** (version 3.8 or higher)  
- **Robot Framework**  
- **robotframework-excellibrary** or **robotframework-datadriver** library for Excel handling  
- An Excel file for testing  

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/your-project.git
   cd your-project
   ```

2. Create a virtual environment (optional but recommended):  
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use: venv\Scripts\activate
   ```

3. Install the dependencies:  
   ```bash
   pip install -r requirements.txt
   ```

4. Verify the Robot Framework installation:  
   ```bash
   robot --version
   ```

## Usage

1. Place your Excel file in the `data/` folder.  
2. Configure the required variables in the `.robot` file.  
3. Run the tests with the following command:  
   ```bash
   robot tests/test_excel.robot
   ```
   
## Technologies Used

- **Python**: Base language.  
- **Robot Framework**: Automation framework.  
- **ExcelLibrary** or **DataDriver**: Libraries for working with Excel files.  

## Contributing

Contributions are welcome. If you have ideas or improvements, feel free to open an [issue](https://github.com/your-username/your-project/issues) or submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
