// Creating sealed trait as the base type
sealed trait Vehicle {
  def name : String 
  def speed : Int
}

// Representing types of vehicles as classes
case class Car(name:String,speed:Int) extends Vehicle
case class Bike(name:String,speed:Int) extends Vehicle
case class Truck(name:String,speed:Int) extends Vehicle

// The Main Program
object MainApp extends App {

// Lambda function to compare between speeds
  val compareSpeeds : (Vehicle,Vehicle)=> Vehicle=(first,second) => if(first.speed>second.speed) first else second

// Creating Objects 
  val firstCar = Car("BMW",120)
  val secondCar = Car("Honda",100)
  val bike = Bike("Trinx",40)
  val truck= Truck("Monster",60)
  
// Showing the info about our vehicles
  println(s"The Vehicle is a ${firstCar.name} car and its speed is ${firstCar.speed} km/h")
  println(s"The Vehicle is a ${secondCar.name} car and its speed is ${secondCar.speed} km/h")
  println(s"The Vehicle is a ${bike.name} bike and its speed is ${bike.speed} km/h")
  println(s"The Vehicle is a ${truck.name} truck and its speed is ${truck.speed} km/h")

// Detecting the faster vehicle after using the compare function
  val theFasterOne = compareSpeeds(firstCar,secondCar)

// Showing which vehicle is the fastest
  println(s"${theFasterOne.name} is the fastest car here and its speed is ${theFasterOne.speed} km/h ")
  
}
