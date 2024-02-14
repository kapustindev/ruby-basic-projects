def bubble_sort(nums)
  for outer in (0...nums.length)
    for inner in (0...nums.length - outer)
      unless nums[inner + 1].nil?
        if nums[inner + 1] < nums[inner]
          temp = nums[inner + 1]
          nums[inner + 1] = nums[inner]
          nums[inner] = temp
        end
      end
    end
  end
  nums
end
