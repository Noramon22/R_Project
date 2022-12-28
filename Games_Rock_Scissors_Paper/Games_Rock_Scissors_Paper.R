function() {
  win <- 0
  loss<- 0
  tie <- 0
  
  while (TRUE) {
    user_hand <- readline("Your press number 0,2,5,9 ?(Rock= 0, Scissors= 2, Paper= 5, Quit= 9):  ")
    computer_hand <- sample(c(0,2,5),1,replace= TRUE)
    
    if (user_hand == computer_hand) {
      print("lie")
      tie <- tie+1
    } else if (user_hand == 2 & computer_hand == 5){
      print("You Win")
      win <- win+1
    } else if (user_hand == 5 & computer_hand == 2){
      print("You loss")
      loss <- loss+1
    } else if (user_hand == 0 & computer_hand == 2){
      print("You Win")
      win <- win+1
    } else if(user_hand == 2 & computer_hand == 0){
      print("You loss")
      loss <- loss+1
    } else if(user_hand == 0 & computer_hand == 5){
      print("You loss")
      loss <- loss+1
    } else if(user_hand == 5 & computer_hand == 0){
      print("You Win")
      win <- win+1
    } else if(user_hand == 9){
      print("thankyou for play!! See you next time")
      print("win", win)
      print("loss", loss)
      print("tie", tie)
      break
    } else {
      print("it incorrect!! please try again")
    }
  }
}
