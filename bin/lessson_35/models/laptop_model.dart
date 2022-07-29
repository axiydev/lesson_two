mixin Techno on Laptop{

}

class Laptop {

}

class Mobile extends Laptop with Techno {

}

class Tv with Laptop, Techno{

}

class Ipad implements Laptop{  //bu xato

}

class Gadget implements Laptop,Techno{

}