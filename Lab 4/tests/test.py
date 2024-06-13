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
        self.assertFalse(check_winner(board, "O"))
        self.assertTrue(check_winner(board, "X"))

if __name__ == "__main__":
    unittest.main()