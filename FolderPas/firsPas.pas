{$MODE DELPHI}{$H+}{$J-}
Program FirstClass;

// Cat Class
Type
    TCat = class
    public   
        // Fields
        Name : string;
        Color : string; 
		// Constructor
        constructor create(Name : string); overload;
        constructor create (Name, Color : string); overload;
        // Method - Behaviour
		procedure Sound;  //  Method Behaviour
    end;
    // default constructor
    constructor TCat.create(Name : string); 
    begin
        self.Name := Name;
    end; 
    // overload constructor with parameters
    constructor TCat.create (Name, Color : string);
    begin
            create; //Inherites default constructor
            self.Name := Name;
            self.Color := Color;
    end;
    // Method Behaviour Implementation
    procedure TCat.Sound; 
    begin
        writeln('Cat ' + self.Name + ' is ' + self.Color + 
		' said: Miauuuuuu!');
    end;

//main programm
Var
    firstCat, secondCat : TCat;

begin
    firstCat := TCat.Create('Melkie');
    firstCat.Color := 'grey';
    firstCat.Sound;

    secondCat := TCat.Create('Chloe', 'black');
    secondCat.Sound; 
    writeln('Cat ' + secondCat.Name + ' is ' 
        + secondCat.Color);
	// free objects from memory	
	firstCat.Free;
	secondCat.Free;
end.
