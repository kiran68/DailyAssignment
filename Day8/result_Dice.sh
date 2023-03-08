

# Initialize an empty dictionary to store the result
result_dict = {}

# Loop until any one of the numbers has reached 10 times
while True:
    # Roll the die and find the number between 1 to 6
    roll_result = random.randint(1, 6)

    # Store the result in the dictionary
    if roll_result in result_dict:
        result_dict[roll_result] += 1
    else:
        result_dict[roll_result] = 1

    # Check if any number has reached 10 times
    for number, count in result_dict.items():
        if count == 10:
            # Print the maximum and minimum result
            max_result = max(result_dict, key=result_dict.get)
            min_result = min(result_dict, key=result_dict.get)
            print("Maximum result: ", max_result)
            print("Minimum result: ", min_result)
            exit()

