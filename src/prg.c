#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
  FILE * fp;

  fp = fopen(argv[1], "r");

  char * line = NULL;
  size_t len = 0;
  ssize_t read;

  while ((read = getline(&line, &len, fp)) != -1) {
    printf("%s", line);
  }

  fclose(fp);
  if (line)
    free(line);

  return 0;
}
