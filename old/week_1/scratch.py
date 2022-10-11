def paths(m, n, memo={}):
    if (m == 1 or n == 1):
        return 1

    key = f"{m} {n}"

    if key in memo:
        return memo[key]
    else:
        memo[key] = paths(m - 1, n) + paths(m, n - 1)
        return memo[key]


print(paths(4, 2))
