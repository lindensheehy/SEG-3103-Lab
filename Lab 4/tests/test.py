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
        self.assertTrue(check_winner(board, "O"))

if __name__ == "__main__":
    unittest.main()