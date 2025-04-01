# PowerShell Scripts by Patrick Goodwin

## Table of Contents
- [Clear Git](#clear-git)
- [Compare Diff](#compare-diff)
- [Connect Four](#connect-four)
- [Count Files](#count-files)
- [Dotnet Analysis](#dotnet-analysis)
- [Gensql Col](#gensql-col)
- [Gensql Count](#gensql-count)
- [Ip](#ip)
- [Neovim](#neovim)
- [Random Password](#random-password)
- [Regvim](#regvim)
- [Search Match](#search-match)
- [Unit Tests](Unit-Tests)
- [Update Git](#update-git)
- [Time](#time)
- [Vs](#vs)
- [Vsc](#vsc)
    

# Clear Git
**Author(s):** Patrick Goodwin

This script deletes all local branches that are not currently published. I like to use this branch because there is a Visual Studio bug that sometimes causes many past branches to locally respawn upon rebooting the app, causing unwanted clutter.

**NOTE:** You should not use this command if you don't regularly push your changes. I almost always push my commits immediately after creating them, so this is practical for me, but if you have unpublished branches with many commits, don't use this command until you publish them (or else you will lose your branch). Also, this command will not delete any branches you are currently checked out on.

### Dependencies
- **Git**: Must be in your PATH as an environment variable

### Parameters
- None.

### Example Usage
```
Clear-Git
```
## Compare Diff
Compares two files line by line and highlights the differences. It can also ignore timestamps if specified.

### Dependencies
Must have 2 named .txt files in the same directory you are executing in (see parameters)

### Parameters
- `-f1`: First file to compare (default: "TestFile1.txt").
- `-f2`: Second file to compare (default: "TestFile2.txt").
- `-notime`: Switch to ignore timestamps in the comparison.

### Example Usage
```
compare-diff -f1 "File1.txt" -f2 "File2.txt" -notime
```
## Connect Four
A fully functional Connect Four game, complete with color coded pieces and win checking.

### Parameters
- `-p1`: First player name (default: "Player 1").
- `-p2`: Second player name (default: "Player 2").

### Example Usage
```
connect-four -p1 "Bob" -p2 "Ryan"
```
## Count Files
Counts and groups files by their extensions in the current directory and its subdirectories. It can exclude files in node_modules unless specified.

### Parameters
- `-includenode`: Switch to include files in node_modules.

### Example Usage
```
count-files -includenode
```
## Dotnet Analysis
Analyzes dotnet backend output on the terminal and sorts outputs to find specific calls to APIs and methods.

### Dependencies
Must have a named .txt files in the same directory you are executing in (see parameters)

### Parameters
- `-f`: File to read (default: "TestFile1.txt").

### Example Usage
```
dotnet-analysis -f "file.txt"
```

## Gensql Col
Generates a SQL script that you can use to search for all instances in your DB of that column name

### Parameters:
`-c`: The name of the column to search

### Example usage:
```
gensql-col -c "NewId"
```

## Gensql Count
Generates a SQL script that you can use to count the number of entries in a given table

### Parameters:
`-t`: The name of the table

### Example usage:
```
gensql-count -c "[db].[Table]"
```

## Ip
Returns your IP address on demand.

### Example Usage
```
ip
```

## Neovim
Searches for a specified file in the current directory and its subdirectories, then opens it in Neovim.

### Dependencies
Neovim (must have it in your PATH as an environment variable)

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```
neovim -f "example.txt"
```
## Random Password
Prints a random password.

### Parameters
- `-l`: The maximum length of the password allowed (default: 12).

### Example Usage
```
random-password
```
## Regvim
Searches for a specified file in the current directory and its subdirectories, then opens it in Vim.

### Parameters
- `-f`: The name of the file to search for (mandatory).

### Example Usage
```
regvim -f "example.txt"
```
## Search Match
Searches for files with a specific extension containing specified strings. It can limit results, perform cross-term searches, display full directories, and filter for method calls.

### Dependencies
Vim (must have it in your PATH as an environment variable)

### Parameters
- `-e`: File extension to search for.
- `-s`: Array of strings to search for within the files.
- `-uncapped`: Switch to list more than 3000 results.
- `-cross`: Switch to search for files containing all strings.
- `-dir`: Switch to display the full file directories.
- `-calls`: Switch to filter for lines where the string is used as a method call.

### Example Usage
```
search-match -e ".cs" -s "SearchTerm1", "SearchTerm2" -cross -dir
```
## Time
Outputs the time of any operation.

### Parameters
- `-f`: The operation to measure

### Example Usage
```
time -f { Write-Output "Hello World" }
```
## Unit-Tests
Runs all of the unit tests in the specified folder with `.csproj`.

### Dependencies
- You must be in the base folder for the unit test project.

### Parameters
- None. (for now)

### Example Usage
```
Unit-Tests
```
## Update Git
Fetches the latest changes from the remote repository and merges them into the current branch. Can specify a branch to merge from.

### Dependencies
Git

### Parameters
- `-branch`: The branch to merge into the current branch (default: "master").

### Example Usage
```
update-git
```
## Vs
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio.

### Dependencies
Visual Studio (must have it in your PATH as an environment variable)

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```
vs -f "example.cs"
```
## Vsc
Searches for a file by name in the current directory and its subdirectories, then opens it in Visual Studio Code.

### Dependencies
Visual Studio Code (must have it in your PATH as an environment variable)

### Parameters
- `-f`: Name of the file to search for (mandatory).

### Example Usage
```
vsc -f "example.js"
```
