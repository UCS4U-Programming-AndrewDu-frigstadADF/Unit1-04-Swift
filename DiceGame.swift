// dice game thing
// Andrew Du-frigstad
// version 1
// since 2022-02-25

// variables
var UserNum = 0
var counter = 0
let RandNum = Int.random(in: 1...6)
var UserNumInt = 0

while (UserNumInt != RandNum) {

  print("pick a number between 1 and 6")
  let UserNumString = readLine()
  let UserNumInt = Int(UserNumString!) ?? -1
  counter = counter + 1

  if (UserNumInt < 1) {
    print("That is not a valid user input")
  }

  else if (UserNumInt > 6) {
    print("That is not a valid user input")
  }

  else if (UserNumInt > RandNum) {
    print("Guess lower")
  }

  else if (UserNumInt < RandNum) {
    print("Guess higher")
  }
  else if (UserNumInt == RandNum) {
    break
  }
}
print("It took you this many guesses: ")
print(counter)