def average(nums)
  return nums[0] if nums.size == 1

  return (nums[0] + average(nums[1, -1])) / nums.length.to_f
end

p average([1, 2, 3, 4])
