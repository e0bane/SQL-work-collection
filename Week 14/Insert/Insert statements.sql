USE u937509157_omarb;

INSERT INTO dataTypesTbl(dataType)VALUES
("null"),
("double"),
("long int"),
("short int"),
("date");

INSERT INTO functionPrefixesTbl(Prefix)VALUES
("char"),
("bool"),
("double"),
("int*"),
("EXEC");

INSERT INTO languagesTbl(Language)VALUES
("MYSQL"),
("C"),
("Java"),
("Ruby"),
("C#");

INSERT INTO prefixLanguageAssociationTbl(prefixID, languageID) VALUES
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 4);

INSERT INTO purposesTbl(Purpose) VALUES
("returns a text file's content"),
("edits a text file"),
("erases a text file's content"),
("gets a specific line from a text file"),
("determines if the passed file path exists");

INSERT INTO functionsTbl(Name, Definition, purposeID, languageID, dataTypeID) VALUES
("read_files_content(const string& FILE_PATH)",
'{

    string content, line;
    ifstream selected_file(FILE_PATH);  // assigns a file path to the selected_file object
    try {
        if (selected_file.is_open()) {
            while (getline(selected_file, line)) {
                content += line;
                content += "\n";
            }
            selected_file.close();
        }
        else {
            cout << "read_files_content() is creating a file...\n";
            write_to_file("", FILE_PATH);
        }

    }
    catch (...) {  // If there is an error within the function
        cout << "ERROR: get_file_content() crashed...\n" << endl;
        content = "ERROR";
        selected_file.close();
    }

    return content;
}', 4, 2, 2),
("write_to_file(const string& MESSAGE, const string& FILE_PATH)",
'{
    ofstream selected_file; // instantiates the selected_file
    selected_file.open(FILE_PATH); // assigns the path to the selected_file object

    try {
        selected_file << MESSAGE; // writes to the file
        selected_file.close();
    }
    catch (...) {
        cout << "ERROR: write_to_file() crashed...\n";
        selected_file.close();
    }
}', 5, 2, 1),
("wipe_file(const string& FILE_PATH)",
'{
    ofstream selected_file; // instantiates the selected_file
    selected_file.open(FILE_PATH); // assigns the path to the selected_file object

    try {
        selected_file << ""; // writes to the file
        selected_file.close();
        cout << "The game file has been wiped...\n";
    }
    catch (...) {
        cout << "ERROR: wipe_file() failed...\n";
        selected_file.close();
    }
}', 6, 2, 1),
("get_specific_line(const string& REFERENCE_STR, const string FILE_PATH)",
'{
    string specified_line, line;
    specified_line = "";

    ifstream selected_file(FILE_PATH);  // assigns a file path to the selected_file object
    try {
        if (selected_file.is_open()) {
            while (getline(selected_file, line)) {  // goes through each of the game data\'s lines
                if (string_are_similar(REFERENCE_STR, line)) {  // if the name has been found within the game data
                    specified_line = line;
                    break;
                }
            }
            selected_file.close();
        }
        else {
            cout << "Creating file for user storage...\n";
            write_to_file("", FILE_PATH);
        }
    }
    catch (...) {
        cout << "ERROR: get_specific_line() failed...\n";
        selected_file.close();
        specified_line = "";
    }

    selected_file.close();
    return specified_line;
}', 7, 2, 2),
("path_exists(const string& FILE_PATH)",
'{
    int lines_start;
    const string FILES_CONTENT = read_files_content(FILE_PATH);

    try {
        lines_start = FILES_CONTENT.find(SPECIFIC_LINE);

        if (FILES_CONTENT.substr(lines_start, SPECIFIC_LINE.length()) != SPECIFIC_LINE) throw 0;
    }
    catch (...) {
        cout << "ERROR: get_specific_lines_start() failed...\n";
        lines_start = 0;
    }
    return lines_start;
}', 8, 2, 4);