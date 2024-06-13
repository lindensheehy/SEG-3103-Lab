def print_board(board):
    print()
    count = 0
    for row in board:
        print(" | ".join(row))
        if count < 2: print("-" * 9)
        count += 1

    print()

def check_winner(board, player):
    # Check rows, columns, and diagonals for a win
    for row in board:
        if all([spot == player for spot in row]):
            return True
    for col in range(3):
        if all([board[row][col] == player for row in range(3)]):
            return True
    if all([board[i][i] == player for i in range(3)]) or all([board[i][2-i] == player for i in range(3)]):
        return True
    return False

def check_tie(board):
    return all([spot != " " for row in board for spot in row])

def get_move(player):
    while True:
        try:
            row, col = map(int, input(f"Player {player}, enter your move (row and column): ").split())
            if row in [0, 1, 2] and col in [0, 1, 2]:
                return row, col
            else:
                print("Invalid input. Enter row and column as 0, 1, or 2.")
        except ValueError:
            print("Invalid input. Enter row and column as 0, 1, or 2.")

def main():
    board = [[" " for _ in range(3)] for _ in range(3)]
    current_player = "X"

    while True:
        print_board(board)
        row, col = get_move(current_player)

        if board[row][col] == " ":
            board[row][col] = current_player
            if check_winner(board, current_player):
                print_board(board)
                print(f"Player {current_player} wins!")
                break
            elif check_tie(board):
                print_board(board)
                print("The game is a tie!")
                break
            current_player = "O" if current_player == "X" else "X"
        else:
            print("This spot is already taken. Try again.")

if __name__ == "__main__":
    main()