numbers <- 1:100
sum_even = 0

for (num in numbers)
{
  if (num %% 2 == 0)
  {
    sum_even = num + sum_even
  }
}

print(paste("Sum of even numbers from 1 to 100:", sum))