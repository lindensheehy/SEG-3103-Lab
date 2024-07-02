defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  describe "percentage_grade/1" do
    test "returns 50 for empty homework and labs, with 0.5 midterm and final" do
      assert 50 ==
               Calculator.percentage_grade(%{
                 homework: [0.5],
                 labs: [0.5, 0.5, 0.5],
                 midterm: 0.5,
                 final: 0.5
               })
    end

    test "returns 100 for perfect scores" do
      assert 100 ==
               Calculator.percentage_grade(%{
                 homework: [1],
                 labs: [1, 1, 1, 1],
                 midterm: 1,
                 final: 1
               })
    end

    test "returns 85 for 0.85 scores" do
      assert 85 ==
               Calculator.percentage_grade(%{
                 homework: [0.85],
                 labs: [0.85, 0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end

    test "returns 80 for 0.80 scores" do
      assert 80 ==
               Calculator.percentage_grade(%{
                 homework: [0.80],
                 labs: [0.80, 0.80, 0.80, 0.80],
                 midterm: 0.80,
                 final: 0.80
               })
    end

    test "returns 75 for 0.75 scores" do
      assert 75 ==
               Calculator.percentage_grade(%{
                 homework: [0.75],
                 labs: [0.75, 0.75, 0.75, 0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end

    test "returns 70 for 0.70 scores" do
      assert 70 ==
               Calculator.percentage_grade(%{
                 homework: [0.70],
                 labs: [0.70, 0.70, 0.70, 0.70],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "returns 65 for 0.65 scores" do
      assert 65 ==
               Calculator.percentage_grade(%{
                 homework: [0.65],
                 labs: [0.65, 0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end

    test "returns 60 for 0.60 scores" do
      assert 60 ==
               Calculator.percentage_grade(%{
                 homework: [0.60],
                 labs: [0.60, 0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end

    test "returns 55 for 0.55 scores" do
      assert 55 ==
               Calculator.percentage_grade(%{
                 homework: [0.55],
                 labs: [0.55, 0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end

    test "returns 50 for 0.60 scores" do
      assert 50 ==
               Calculator.percentage_grade(%{
                 homework: [0.50],
                 labs: [0.50, 0.50, 0.50, 0.50],
                 midterm: 0.50,
                 final: 0.50
               })
    end

    test "returns 40 for 0.40 scores" do
      assert 40 ==
               Calculator.percentage_grade(%{
                 homework: [0.40],
                 labs: [0.40, 0.40, 0.40, 0.40],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "returns 37 for mixed scores just below fail threshold" do
      assert 37 ==
               Calculator.percentage_grade(%{
                 homework: [0.40],
                 labs: [0.25, 0.25, 0.25],
                 midterm: 0.40,
                 final: 0.40
               })
    end
  end

  # Continue similarly for letter_grade/1 and numeric_grade/1 tests...
  describe "letter_grade/1" do
    test "returns EIN for insufficient criteria met" do
      assert "EIN" ==
               Calculator.letter_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.5,
                 final: 0.5
               })
    end

    test "returns A+ for perfect scores" do
      assert "A+" ==
               Calculator.letter_grade(%{
                 homework: [1],
                 labs: [1, 1, 1, 1],
                 midterm: 1,
                 final: 1
               })
    end

    test "returns A for scores around 85%" do
      assert "A" ==
               Calculator.letter_grade(%{
                 homework: [0.85],
                 labs: [0.85, 0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end

    test "returns A- for scores around 80%" do
      assert "A-" ==
               Calculator.letter_grade(%{
                 homework: [0.80],
                 labs: [0.80, 0.80, 0.80, 0.80],
                 midterm: 0.80,
                 final: 0.80
               })
    end

    test "returns B+ for scores around 75%" do
      assert "B+" ==
               Calculator.letter_grade(%{
                 homework: [0.75],
                 labs: [0.75, 0.75, 0.75, 0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end

    test "returns B for scores around 70%" do
      assert "B" ==
               Calculator.letter_grade(%{
                 homework: [0.70],
                 labs: [0.70, 0.70, 0.70, 0.70],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "returns C+ for scores around 65%" do
      assert "C+" ==
               Calculator.letter_grade(%{
                 homework: [0.65],
                 labs: [0.65, 0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end

    test "returns C for scores around 60%" do
      assert "C" ==
               Calculator.letter_grade(%{
                 homework: [0.60],
                 labs: [0.60, 0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end

    test "returns D+ for scores around 55%" do
      assert "D+" ==
               Calculator.letter_grade(%{
                 homework: [0.55],
                 labs: [0.55, 0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end

    test "returns D for scores around 50%" do
      assert "D" ==
               Calculator.letter_grade(%{
                 homework: [0.50],
                 labs: [0.50, 0.50, 0.50, 0.50],
                 midterm: 0.50,
                 final: 0.50
               })
    end

    test "returns E for scores around 40%" do
      assert "E" ==
               Calculator.letter_grade(%{
                 homework: [0.40],
                 labs: [0.40, 0.40, 0.40, 0.40],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "returns F for scores below fail threshold" do
      assert "F" ==
               Calculator.letter_grade(%{
                 homework: [0.40],
                 labs: [0.25, 0.25, 0.25],
                 midterm: 0.40,
                 final: 0.40
               })
    end
  end
  describe "numeric_grade/1" do
    test "returns 0 for insufficient criteria met" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.5,
                 final: 0.5
               })
    end

    test "returns 10 for perfect scores" do
      assert 10 ==
               Calculator.numeric_grade(%{
                 homework: [1],
                 labs: [1, 1, 1, 1],
                 midterm: 1,
                 final: 1
               })
    end

    test "returns 9 for scores around 85%" do
      assert 9 ==
               Calculator.numeric_grade(%{
                 homework: [0.85],
                 labs: [0.85, 0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end

    test "returns 8 for scores around 80%" do
      assert 8 ==
               Calculator.numeric_grade(%{
                 homework: [0.80],
                 labs: [0.80, 0.80, 0.80, 0.80],
                 midterm: 0.80,
                 final: 0.80
               })
    end

    test "returns 7 for scores around 75%" do
      assert 7 ==
               Calculator.numeric_grade(%{
                 homework: [0.75],
                 labs: [0.75, 0.75, 0.75, 0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end

    test "returns 6 for scores around 70%" do
      assert 6 ==
               Calculator.numeric_grade(%{
                 homework: [0.70],
                 labs: [0.70, 0.70, 0.70, 0.70],
                 midterm: 0.70,
                 final: 0.70
               })
    end

    test "returns 5 for scores around 65%" do
      assert 5 ==
               Calculator.numeric_grade(%{
                 homework: [0.65],
                 labs: [0.65, 0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end

    test "returns 4 for scores around 60%" do
      assert 4 ==
               Calculator.numeric_grade(%{
                 homework: [0.60],
                 labs: [0.60, 0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end

    test "returns 3 for scores around 55%" do
      assert 3 ==
               Calculator.numeric_grade(%{
                 homework: [0.55],
                 labs: [0.55, 0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end

    test "returns 2 for scores around 50%" do
      assert 2 ==
               Calculator.numeric_grade(%{
                 homework: [0.50],
                 labs: [0.50, 0.50, 0.50, 0.50],
                 midterm: 0.50,
                 final: 0.50
               })
    end

    test "returns 1 for scores around 40%" do
      assert 1 ==
               Calculator.numeric_grade(%{
                 homework: [0.40],
                 labs: [0.40, 0.40, 0.40, 0.40],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "returns 0 for scores below fail threshold" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [0.40],
                 labs: [0.25, 0.25, 0.25],
                 midterm: 0.40,
                 final: 0.40
               })
    end
  end
end
