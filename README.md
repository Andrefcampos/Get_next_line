# Get Next Line

![42 São Paulo](https://img.shields.io/badge/42-SP-000000)

## Table of Contents

- [About](#about)
- [How It Works](#how-it-works)
- [Features](#features)
- [How to Use](#how-to-use)
- [File Structure](#file-structure)
- [Contributing](#contributing)
- [License](#license)

## About

**Get Next Line** is a project from the curriculum of [42 São Paulo](https://www.42sp.org.br/) that aims to implement a function capable of reading a line from a file descriptor. This project is an essential step in learning to handle file I/O and dynamic memory allocation in C.

## How It Works

The `get_next_line` function reads a line from a given file descriptor until it reaches a newline character or the end of the file. It handles multiple file descriptors simultaneously and maintains the reading state for each one separately.

## Features

- Reads from any valid file descriptor.
- Supports multiple file descriptors at the same time.
- Efficiently handles large files and buffers.

## How to Compile

To compile the `get_next_line` library, you can use the provided Makefile. Run the following commands in the terminal:

```sh
make
```

This will generate the get_next_line.a file, which can be included in other projects.

To clean up the object files generated during compilation:

```sh
make clean
```

To clean all generated files, including get_next_line.a:
```sh
make fclean
```

To recompile the library from scratch:
```sh
make re
```

## How to Use

To use get_next_line in your projects, include the library header and link the get_next_line.a file during compilation:
```c
#include "get_next_line.h"
```

When compiling your project, add get_next_line.a to the compiler command line:
```sh
gcc -Wall -Wextra -Werror -o my_program my_program.c get_next_line.a
```

## File Structure

The project directory structure is organized as follows:
```
Get_next_line/
├── includes/
│   └── get_next_line.h
├── srcs/
│   ├── mandatory/
│   │   ├── get_next_line.c
│   │   └── get_next_line_utils.c
│   └── bonus/
│       ├── get_next_line_bonus.c
│       └── get_next_line_utils_bonus.c
├── tests/
│   ├── main.c
├── Makefile
├── README.md
├── LICENSE
```
- includes/: Contains the get_next_line.h header file;
- srcs/: Contains the source code files for the get_next_line function and its utilities;
- tests/: Contains a simple main.c file to test the functionality of get_next_line;
- Makefile: Build script;
- README.md: Project documentation;
- LICENSE: License file.

## Contributing

Contributions are welcome! If you want to contribute to this project, please follow the steps below:

1. Fork the project;
2. Create a branch for your feature (git checkout -b feature/new-feature);
3. Commit your changes (git commit -am 'Add new feature');
4. Push to the branch (git push origin feature/new-feature);
5. Create a new Pull Request.

## License
This project is licensed under the MIT License. See the [LICENSE]() file for more details.
