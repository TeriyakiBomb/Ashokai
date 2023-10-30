;; Define a function
(defn greet [name]
  (println (str "Hello, " name "!")))

;; Call the function
(greet "John")

;; Define a map
(def person {:name "John" :age 25})

;; Access map values
(println (str "Name: " (:name person)))
(println (str "Age: " (:age person)))

;; Define a list
(def numbers [1 2 3 4 5])

;; Apply a function to each element of the list
(def squared-numbers (map #(Math/pow % 2) numbers))
(println squared-numbers)

;; Define a higher-order function
(defn multiply-by [n]
  (fn [x]
    (* n x)))

;; Create a function with a specific behavior
(def multiply-by-two (multiply-by 2))
(println (multiply-by-two 5))

;; Define a closure
(defn create-greeter [greeting]
  (fn [name]
    (println (str greeting ", " name "!"))))

;; Create a specific greeter
(def greet-with-hello (create-greeter "Hello"))
(greet-with-hello "John")

;; Define a macro
(defmacro for-loop [bindings test next & body]
  `(loop [~@(take-nth 2 bindings)]
     (when ~test
       ~@body
       (recur ~@(take-nth 2 next)))))

;; Use the macro
(for-loop [i 0 (< i 5) (inc i)]
  (println i))

;; Define a function with destructuring
(defn print-person-info [{:keys [name age]}]
  (println (str "Name: " name))
  (println (str "Age: " age)))

;; Call the function with a map argument
(print-person-info {:name "John" :age 25})