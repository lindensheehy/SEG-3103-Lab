import unittest
from game import *

class Tests(unittest.TestCase):
    def test_winner_row(self):
        board = [
            ["X", "X", "X"],
            [" ", "O", " "],
            [" ", " ", "O"]
        ]
        self.assertTrue(check_winner(board, "X"))
        self.assertFalse(check_winner(board, "O"))

    def test_winner_column(self):
        board = [
            ["O", "X", " "],
            ["O", "X", " "],
            ["O", " ", "X"]
        ]
        self.assertTrue(check_winner(board, "O"))
        self.assertFalse(check_winner(board, "X"))

    def test_winner_diagonal(self):
        board = [
            ["X", "O", " "],
            ["O", "X", " "],
            [" ", "O", "X"]
        ]
        self.assertTrue(check_winner(board, "X"))
        self.assertFalse(check_winner(board, "O"))

    def test_tie(self):
        board = [
            ["X", "O", "X"],
            ["O", "X", "O"],
            ["O", "X", "O"]
        ]
        self.assertTrue(check_tie(board))
        self.assertFalse(check_winner(board, "X"))
        self.assertFalse(check_winner(board, "O"))

    def test_no_winner_no_tie(self):
        board = [
            ["X", "O", " "],
            ["O", "X", " "],
            [" ", " ", "O"]
        ]
        self.assertFalse(check_tie(board))
        self.assertFalse(check_winner(board, "X"))
        self.assertFalse(check_winner(board, "O"))

if __name__ == "__main__":
    unittest.main()