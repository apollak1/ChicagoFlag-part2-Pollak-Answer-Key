/*
 App Dev with SwiftUI I : Lab 2
 
Here are the goals of this lab.
 
1. When directed, you will take your Chicago flag code from Part1 and copy it below.  Make sure it looks right before going on. Do not do it yet.
 
2. I want you to make it so that if you tap on either of the two middle stars,  it will toggle all stars color from red to a color of your choice. It can go back and forth with the colors
 
3. If you tap the leftmost star, you should set all the stars to red.
 
4. If you tap the rightmost star, you should set all the stars to the other color you choose.
 
Note the left and right stars set the stars to a fixed color, it is not toggling between two different colors like the two in the center.
 
 
 
 ############ BUTTONS, IMAGES, and @STATE ##########
 A few notes for creating Buttons, Images, and @State variables that make it clickable.
 A button will have two states, either “clicked” or “not clicked”. This translates over to True/False.
 These variables need to be declared before the var body: some View, like the following
 
***Copy the line below and paste it below “ struct ContentView: View { “
*****************
 @State var buttonClick = False
 ******************
 
Now that we have a variable that can have its state updated, we can then use this variable with a Button. This allows us to determine if a button is clicked or not, and update our code if this is the case
  
 Below is a following snippet of code that creates a button with the label "Press Button"
 
 The first part of this code that is enclosed in
 
********************
Button {
 
 }
*******************
 
 Is the logic that will occur when the button is pressed
 The second part that is called
 
********************
 label: {
 
 }
 
********************
 This states what the label of the button will work like and look like
 
 Example: ************************
 
 Button {
     buttonClick.toggle()
 } label: {
     Text("Press Button")
 }
 
**************************************
 
 When the user clicks the Text("Press Button") the code that runs is buttonClick = not buttonClick, which makes it True or False
 
 This doesn't do anything on it's own, so where we want to use this buttonClick boolean value is in association with other Views(), such as a Rectangle
 
 Placing this code will create a Button above a rectangle:
*********************************
 Button {
     buttonClick.toggle()
 } label: {
     Text("Press Button")
 Rectangle()
 .foregroundColor(.blue)
 .frame(width: 50, height: 50)
 }
 **********************************
 This Rectangle can relate to the button above it by using what we call a ternary-if. This is a simple-if statement that checks.
 if something is true, then do something, else do something else. This can replace the If/Else-if statements.
 
Ternary means three parts. In this case it’s like a question with two answers.
 
 This is written in short-hand with the following logic -
  booleanValue ? trueStatement : falseStatement
 
 The above is read as:
 if booleanValue is true, then do trueStatement
 if booleanValue is false, then do falseStatement
 
 How do we use this with our rectangle, we can apply the buttonClick boolean we used previously, and check if the buttonClick is true, apply a color, else apply a different color to our rectangle
 
 Where this ternary-if goes is onto our Rectangle's color declaration
**********************
 Rectangle()
     .foregroundColor(.blue)
     .frame(width: 50, height: 50)
 ***********************
 
 Can be changed into
 
**************************
 Rectangle()
     .foregroundColor(buttonClick ? .blue : .orange)
     .frame(width: 50, height: 50)
 **************************
 
 Copy this code into your main VStack and see what happens:
 
************************************
 Button {
     buttonClick.toggle()
 } label: {
     Text("Press Button")
 }
 Rectangle()
     .foregroundColor(buttonClick ? .blue : .orange)
     .frame(width: 50, height: 50)
*******************************************
 
 Now you can also apply this exact logic to an Image, like the flag supplied to you, by making the Image itself the label of the button.
 
Now add another button underneath the Rectangle() in our example. Copy and paste the below code.
 
 ********************************
 Button {
     buttonClick.toggle()
 } label: {
     Image("chicagoStar")
         .foregroundColor(buttonClick ? .green : .gray)
 })
 
 **************************************
 
 This logic will apply for all buttons, and you should use a ternary-if when using buttons
 */
 
 
//Study the code that you pasted below to see HOW to surround your stars code with the buttons. Play with it before going on.
 
 
/* You first have to create a variable in the screen display code to become “active”. You do that by creating a variable that is “@State”. You want to change the “state” but you want it “off” first so you use a Boolean state set to false.
 */
 
/*
######  DIRECTIONS FOR CREATING 5 ACTIVE STATE VARS ######
 
1. Take the completed Chicago Flag code from your last lab and paste it below  and make sure it looks right. Make sure the other code that was there is deleted. Only your Chicago Flag code would be there.
 
2. BELOW “ struct ContentView: View { “ take each Image(“chicagoStar”) object and give the value of a new variable naming them in order star1, star2, star3, star4. That is four lines of code.
 
3. Make each of the new vars and make them into an active state (@State).
 
4. Change each Image(“chicagoStar”) name below and replace them with the new var star names (star1, star2, star3, star4). Keep the attributes you had there.
 
5.  Below the new @State vars create another one and label it “middleToggleStar” and give it the value of false. Make sure it’s in an active state.
 
At this point we will work on Buttons.
*/
 
/*
********** MIDDLE BUTTON DIRECTIONS *********
 
1. You will always use this Xcode button format: Button(action: {  }, label: { })
Just type in “Button(action” and it should come up in the drop down box in Xcode.
 
2. You are going to put the images (star1, star2, star3, star4) inside its own button code, making four buttons.
 
3. You start with the middle stars to make them separate buttons (star2, star3). Make some room ABOVE star2.
 
4. Type in “Button(action: “ and the “ Button(action: label:) “ should come up. Click on it. This should come up:
 
******************
Button(action: { }, label: {
    Text(“Button”)
}
*******************
 
5. Make room spacing for the action braces to write code.
 
6. Put the active var starButton in it and add the .toggle() attribute to it. It should popup in the drop down menu.
 
7. Take the star2 code and its attributes and move it and replace the Text(“Button”) code.
 
Congratulations you made an active button but you have not told it to do anything yet except you can press it when you run it in the simulator or canvas. You have to tell it to change the foregroundColor between red and green.
 
8. You must take the foregroundColor(.red) and change the parameters () to include the active var you typed in the action (starButton) and put into it a ternary-if
 
(question ? answer1/true : answer2/false)
 
Ture means the button is on. False means the button is off.
 
 The question is the active var associated with the Button action. The answer if true is .green and if the answer if false it is .red.
 
If you don’t understand how it will look, take a look at the example practice code earlier above.
 
9. At this point your star2 Button should be ready to test. On the canvas, make it active by pressing the Live Preview button on the left side of the Preview bar above the phone simulation.
 
If you did everything correctly, everytime you press star2 it should turn green or red. If it doesn’t, check your work. If it does, continue.
 
10. If the star2 button works, then do everything the same with star3. Then test it if it works.
 
If both star2 and star 3 buttons work, CONGRATULATIONS YOU MADE ACTIVE STATE BUTTONS THAT IS USED ON ALL IPHONE APPS!!!
 
Wherever the starButton is, everytime it is changed, it will change ALL the starButtons in the program. That’s the magic of it.
 
 
 
********** STAR1 & STAR3 DIRECTIONS *********
 
1. You will do the same thing to star1 and star4 as you did with star2 and star3. Test it like before. It should turn ALL the stars green and red.
 
2. But you have to make star1 turn ALL the stars red ONLY. To do that you must take the toggle attribute away and give it the value of what red is in the ternary-if parameter of the foregroundColor. What position is the .red in? See #8 above.
 
3. Once you have it correct, test it. Star1 should turn all the stars red only every time it is pressed.
 
4. If star1 tests well then you should be able to figure out what to do with star4 - the opposite of star1!
 
 
 
 
 
 
 
 
 
 
 
 
 
*/
//Example code
 
import SwiftUI
struct ContentView: View {
 
 @State var buttonClick = false
    
    var body: some View {
        VStack {
            Button {
                buttonClick.toggle()
            } label: {
                Text("Press Button")
            }
            Rectangle()
                .foregroundColor(buttonClick ? .blue : .orange)
                .frame(width: 50, height: 50)
            Button {
                buttonClick.toggle()
            } label: {
                Image("chicagoStar")
                    .foregroundColor(buttonClick ? .green : .gray)
            }
        }
    }
}
 
 
//NEVER touch the text below
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Answer Code
/*
import SwiftUI
 
struct ContentView: View {
    @State var star1 = Image("chicagoStar")
    @State var star2 = Image("chicagoStar")
    @State var star3 = Image("chicagoStar")
    @State var star4 = Image("chicagoStar")
    @State var starButton = false
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 320, height: 45)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 320, height: 45)
            
            HStack {
                    Button(action: {
                        starButton = false
                        
                    }, label: {
                        star1
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(starButton ? .purple : .red)
                    })
                    
                Button(action: {
                    starButton.toggle()
                }, label: {
                    star2
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(starButton ? .purple : .red)
                    
                })
                    
                    
                    Button(action: {
                        starButton.toggle()
                    }, label: {
                        star3
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(starButton ? .purple : .red)
                    })
                    
                    Button(action: {
                        starButton = true
                    }, label: {
                        star4
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(starButton ? .purple : .red)
                    })
                    
                   
                    
                
            }
            .padding(.vertical)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 320, height: 45)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 320, height: 45)
            
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
    }
}
 
 
 
 
//DO NOT TOUCH ANYTHING BELOW HERE!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
*/
