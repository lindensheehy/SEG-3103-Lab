defmodule Grades.Calculator do

  def avg(input) do

    count = Enum.count(input)

    if count != 0 do
      Enum.sum(input) / count
    else
      0
    end

  end

  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

    avg_homework = avg(homework)
    avg_labs = avg(labs)

    round((0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final) * 100)

  end

  def grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

    avg_homework = avg(homework)
    avg_labs = avg(labs)
    avg_exams = (midterm + final) / 2

    num_labs =
      labs
      |> Enum.reject(fn mark -> mark < 0.25 end)
      |> Enum.count()

    # IO.puts("hw: ")
    # IO.puts(homework)
    # IO.puts("avg: ")
    # IO.puts(avg_homework)

    if avg_homework < 0.4 || avg_exams < 0.4 || num_labs < 3 do
      -1
    else
      0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
    end

  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

    mark = grade(%{homework: homework, labs: labs, midterm: midterm, final: final})

    # Return when mark is "EIN"
    if (mark == -1) do
      "EIN"
    else
      cond do
        mark > 0.895 -> "A+"
        mark > 0.845 -> "A"
        mark > 0.795 -> "A-"
        mark > 0.745 -> "B+"
        mark > 0.695 -> "B"
        mark > 0.645 -> "C+"
        mark > 0.595 -> "C"
        mark > 0.545 -> "D+"
        mark > 0.495 -> "D"
        mark > 0.395 -> "E"
        :else -> "F"
      end
    end

  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

    mark = grade(%{homework: homework, labs: labs, midterm: midterm, final: final})

    # Return when mark is "EIN"
    if (mark == -1) do 0 end

    cond do
      mark > 0.895 -> 10
      mark > 0.845 -> 9
      mark > 0.795 -> 8
      mark > 0.745 -> 7
      mark > 0.695 -> 6
      mark > 0.645 -> 5
      mark > 0.595 -> 4
      mark > 0.545 -> 3
      mark > 0.495 -> 2
      mark > 0.395 -> 1
      :else -> 0
    end

  end

end
