void setup() {
  size(500, 500);
  drawBoard();
  computerTurn();
}

void draw() {
}

void keyPressed() {
  if (gameOver) {
    println("The game has ended.");
    return;
  }

  int index = key - '0';
  if (index < 0 || index > 8) {
    println("Invalid key pressed. Please use keys 0–8.");
    return;
  }

  if (board[index] != ' ') {
    println("That square is already taken.");
    return;
  }

  makeMove(index, 'O');
  drawBoard();

  if (checkWin('O')) {
    println("You win!");
    gameOver = true;
    return;
  } else if (isBoardFull()) {
    println("No one has won.");
    gameOver = true;
    return;
  }

  computerTurn();
}
