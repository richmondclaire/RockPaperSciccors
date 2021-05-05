//Accepts user's choice in the form of a string. Ensures a valid choice was entered.
func getUserChoice(userInput: String)->String{
  if userInput == "rock" || userInput == "paper" || userInput == "scissors"{
    return userInput
  }
  else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

//Generates random computer choice and returns as string
func getComputerChoice()->String{
  let randomNumber = Int.random(in:0...2)
  switch randomNumber {
    case 0: return "rock"
    case 1: return "paper"
    case 2: return "sciccors"
    default: return "Something went wrong"
  }
}

// Accepts user's choice and computer's choice and uses switch statements to determine winner.
func determineWinner(_ userChoice: String, _ compChoice: String)->String{
  var decision: String = "It's a tie" //default option
  switch userChoice {
    case "rock":
      if compChoice == "paper" { decision = "The computer won." }
      else if compChoice == "sciccors" { decision = "The user won." }
    
    case "paper":
        if compChoice == "rock"{ decision = "The user won" }
        else { decision = "Oh no! The computer won!" }
    
    case "sciccors":
        if compChoice == "rock"{ decision = "The computer won" }
        else { decision = "You won!" }
    
    default: print("Something went wrong.")
  }
  return decision
}

// Now let's play the game.
let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice).")
print("The computer threw \(compChoice).")
print(determineWinner(userChoice, compChoice))
