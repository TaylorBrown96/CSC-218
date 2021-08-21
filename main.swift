//M1HW1_Brown
//Taylor J. Brown
//19AUG21

func bronze(){
  print("Please Enter your name: ")
  let usr_name = String(readLine()!)

  print("Hello", usr_name, "my name is Taylor.\n")
}

func silver(){
  var keep_going:Int = 0
  let results = silverGen()
  var nums1:Int = results.f
  var nums2:Int = results.s

  while keep_going == 0{
    let ans = nums1 + nums2
    print(nums1, "+", nums2)
    
    var usr_inp:Int = 0
    print("Please enter your answer: ")
    if let a = readLine(strippingNewline: true){
      usr_inp = Int(a)!
    }

    if usr_inp == ans{
      let q = Int.random(in: 0..<3)

      if q == 0{
        print("YAY!")
      }else if q == 1{
        print("Correct!")
      }else{
        print("That's Right!")
      }

      var usr_choice:String = "y"
      print("Would you like to answer a different question?(y for yes): ")
      if let a = readLine(strippingNewline: true){
        usr_choice = String(a)
      }
      
      if usr_choice == "y"{
        let results = silverGen()
        nums1 = results.f
        nums2 = results.s
      }else if usr_choice == "Y"{
        let results = silverGen()
        nums1 = results.f
        nums2 = results.s
      }else{
        keep_going += 1
      }
    }else{
      let e = Int.random(in: 0..<3)

      if e == 0{
        print("NAY")
      }else if e == 1{
        print("Wrong")
      }else{
        print("Try Again")
      }
    }
  }
}

func silverGen() -> (f: Int, s: Int){
  let a = Int.random(in: 0..<26)
  let b = Int.random(in: 0..<26)
  return(a,b)
}

func gold(){
  print("\nHow high do you want me to count?: ")
  var endAmount:Int = 0
  if let a = readLine(strippingNewline: true){
  endAmount = Int(a)!
  }
  var stAmount:Int = 0

  for _ in stAmount...endAmount{
    if stAmount < endAmount{
      stAmount += 1
      print(stAmount)
      }
    else if stAmount > endAmount{
      break} 
  }
}

bronze()
silver()
gold()