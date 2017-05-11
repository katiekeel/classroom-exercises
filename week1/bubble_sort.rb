class BubbleSort

  def sort(input)
    # sort as many times as array has elements
    input.length.times do
      # the swap-sort
      input.each_with_index do |item, index|
        # capture first value
        previous_value = input[index]
        # capture second value
        current_value = input[index + 1]
          # compare values
          if current_value != nil && previous_value > current_value
            # swap the values if needed
            input[index] = current_value
            input[index + 1] = previous_value
          end
        end
      end
    # return input
    input
  end
end

sorter = BubbleSort.new
p sorter.sort(["c", "b", "a"])
p sorter.sort(["d", "z", "r", "q"])
