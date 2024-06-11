#include <stdio.h>
#include <syslog.h>

int main(int argc, char* argv[]) {
    
    openlog(argv[0], LOG_PID, LOG_USER);

    // Check if the number of arguments is correct
    if (argc != 3) {
        printf("Usage: writer <file> <string>\n");
        syslog(LOG_ERR, "Invalid number of arguments");
        return 1;
    }

    FILE* file = fopen(argv[1], "w");

    // Check if the file exists
    if (file == NULL) {
        printf("Usage: writer <file> <string>\n");
        syslog(LOG_ERR, "Could not open file %s", argv[1]);
        return 1;
    }

    syslog(LOG_DEBUG, "Writing %s to file %s", argv[2], argv[1]);
    fprintf(file, "%s\n", argv[2]);

    // Clean up
    fclose(file);
    closelog();

    return 0;
}