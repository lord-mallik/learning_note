# To Create a project using expo
 => npx create-expo-app@latest Project_Name
# do not use expo for the project.

# To Create a project with Command Line Interface (CLI)
 => npx @react-native-community/cli init Project_Name
 => cd Project_Name
 => npx react-native start

# Run on emulator
iOS => npm run ios
Android => npm run android

# Run instructions for iOS:
    • cd "/Users/nikhilmallik/Documents/Nikhil/React_Native/demo_app/ios"
    
    • Install Cocoapods
      • bundle install # you need to run this only once in your project.
      • bundle exec pod install
      • cd ..
    
    • npx react-native run-ios

# run in the specific simulator add the below code in package.json
  => "ios": "react-native run-ios --simulator='Nikhil'"

# To print in console
    Console.log("Message here");

# To create a page with pre define initial code use => rnfe then enter.

# To create a page with pre define initial code with sytlesheet use => rnfs then enter.
