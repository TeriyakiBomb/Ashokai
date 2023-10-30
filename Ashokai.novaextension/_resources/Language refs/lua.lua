-- Define a function
function greet(name)
    print("Hello, " .. name .. "!")
end

-- Call the function
greet("John")

-- Define a table
local person = {
    name = "John",
    age = 25,
    department = "IT"
}

-- Access table fields
print("Name: " .. person.name)
print("Age: " .. person.age)

-- Define a loop
for i = 1, 5 do
    print("Iteration " .. i)
end

-- Define a function with variable number of arguments
function add(...)
    local sum = 0
    for i, v in ipairs({...}) do
        sum = sum + v
    end
    return sum
end

-- Call the function with different number of arguments
local result1 = add(1, 2, 3)
local result2 = add(4, 5, 6, 7)
print("Result 1: " .. result1)
print("Result 2: " .. result2)

-- Define a coroutine
local function countDown(from)
    for i = from, 1, -1 do
        print(i)
        coroutine.yield()
    end
    print("Blast off!")
end

-- Create a coroutine
local co = coroutine.create(countDown)

-- Resume the coroutine
coroutine.resume(co, 5) -- Prints: 5
coroutine.resume(co)    -- Prints: 4
coroutine.resume(co)    -- Prints: 3
-- ...

-- Define a metatable
local mt = {
    __add = function(a, b)
        return { x = a.x + b.x, y = a.y + b.y }
    end,
    __tostring = function(vec)
        return "(" .. vec.x .. ", " .. vec.y .. ")"
    end
}

-- Define a table with metatable
local vector1 = { x = 3, y = 4 }
local vector2 = { x = 1, y = 2 }
setmetatable(vector1, mt)
setmetatable(vector2, mt)

-- Perform addition using the metatable
local result = vector1 + vector2
print("Result: " .. result) -- Prints: (4, 6)