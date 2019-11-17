//https://www.hackerrank.com/challenges/cavity-map

// Complete the cavityMap function below.
function cavityMap(grid) {
    for(var x = 1; x<grid.length -1; x++){
        for(var y = 1; y<grid[x].length -1; y++){
            if(parseInt(grid[x][y])>parseInt(grid[x][y+1]) &&
               parseInt(grid[x][y])>parseInt(grid[x][y-1]) &&
               parseInt(grid[x][y])>parseInt(grid[x+1][y]) &&
               parseInt(grid[x][y])>parseInt(grid[x-1][y])) {
                grid[x] = grid[x].split('');
                grid[x][y]= 'X';
                grid[x] = grid[x].join('');
            }
        }
    }
    return grid;
}
