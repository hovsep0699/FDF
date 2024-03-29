#include "fdf.h"

static void readLineFromFile(int fd, fdf_t *fdf, char *file)
{
    int     gnlErr;
    char    *line;
    int     lineIndex;
    char    **lineValues;
    size_t  len;

    lineIndex = 0;
    line = NULL;
    fdf->map.matrix[fdf->map.height] = NULL;
    if ((fd = open(file, O_RDONLY)) < 0)
        error(ERR_IO, FILE_ERROR, fdf);
    while ((gnlErr = ft_getline(fd, &line)))
    {
        if (line)
        {
            if (!*line)
            {
                free(line);
                continue;
            }
            len = ft_strlen(line);
            if (len > 2)
            {
                // line[len - 2] = 0;
                lineValues = ft_strsplit(line, ' ');
                fillMap(fdf, lineValues, lineIndex);
                // line[len - 2] = '\n';
                free(line);
            }
        }
        ++lineIndex;
        
    }
    close(fd);
    // free(line);
    if (gnlErr < 0)
        error(ERR_IO, GETLINE_ERROR, fdf);
}

static int isValidFileExtension(char *filename)
{
    char *ext;

    ext = ft_strrchr(filename, '.');
    if (!ext)
        return (0);
    if (!ft_strcmp(ext + 1, "fdf"))
        return (1);
    return (0);
}

void readFromFile(fdf_t *fdf, int argc, char **argv)
{
    int fd;
    int i;
    int is_save;

    fd = -1;
    i = 1;
    is_save = 0;
    while (++i < argc)
        if (!ft_strcmp(argv[i], "--save"))
            fdf->is_save = 1;
    if (argc >= 2 && argc <= 5)
    {
        if (argc > 2)
        {
            is_save = ft_strcmp(argv[2], "--save");
            if (!isNumberString(argv[2]) && is_save)
                error(ERR_INVALID_ARGS, ARGUMENT_ERROR, fdf);
            if (is_save)
                fdf->camera.zoom = ft_atoi(argv[2]);
            if (argc == 4)
            {
                is_save = ft_strcmp(argv[3], "--save");
                if (!isNumberString(argv[3]) && is_save)
                    error(ERR_INVALID_ARGS, ARGUMENT_ERROR, fdf);
                if (is_save)
                    fdf->camera.zMod = ft_atoi(argv[3]);
            }
        }
        if (!isValidFileExtension(argv[1]))
            error(ERR_IO, EXTENSION_ERROR, fdf);
        if ((fd = open(argv[1], O_RDONLY)) < 0)
            error(ERR_IO, FILE_ERROR, fdf);
        getHeight(fd, fdf);
        close(fd);
    }
    else
        error(ERR_INVALID_ARGS, USAGE_ERROR, fdf);
    if (!(fdf->map.matrix = (point_t **)malloc(sizeof(point_t *) * (fdf->map.height + 1))))
        error(ERR_MALLOC, MALLOC_ERROR, fdf);
    readLineFromFile(fd, fdf, argv[1]);
}
