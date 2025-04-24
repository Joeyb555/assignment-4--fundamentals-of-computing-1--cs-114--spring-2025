void makeMove(int index, char player) {
  board[index] = player;
}

char[] board = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};

boolean checkWin(char player) {
  int[][] wins = {
    {0,1,2}, {3,4,5}, {6,7,8},
    {0,3,6}, {1,4,7}, {2,5,8},
    {0,4,8}, {2,4,6}
  };

  for (int[] win : wins) {
    if (board[win[0]] == player &&
        board[win[1]] == player &&
        board[win[2]] == player) {
      return true;
    }
  }
  return false;
}

boolean isBoardFull() {
  for (char c : board) {
    if (c == ' ') return false;
  }
  return true;
}

void computerTurn() {
  if (gameOver) return;

  for (int i = 0; i < 9; i++) {
    if (board[i] == ' ') {
      makeMove(i, 'X');
      drawBoard();
      println("Game in play.");
      if (checkWin('X')) {
        println("Computer wins!");
        gameOver = true;
      } else if (isBoardFull()) {
        println("No one has won.");
        gameOver = true;
      }
      break;
    }
  }
}
