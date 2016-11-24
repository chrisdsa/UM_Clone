Epaisseur = 5;  // Epaisseur (mm)
Hauteur = 50.2;   // Hauteur du power supply (mm)
Largeur = 15;   // Largeur du support (mm)
Diametre = 5+0.8;   // Diametre du trou pour la vis (mm)
Epaisseur_Renfort = 3; // Epaisseur du renfort (mm)
longeur_support = 20;



difference(){
// Support
union(){
    translate([0,0,10.2])
    cube([Largeur,20+Epaisseur,Epaisseur],false);
    translate([0,0,-10-0.2-Epaisseur])
    cube([Largeur,20+Epaisseur,Epaisseur],false);
    
    translate([0,0,-Hauteur/2-Epaisseur/2])
    cube([Largeur,Epaisseur,Hauteur+Epaisseur],false);
    
    translate([0,-(longeur_support),Hauteur/2])
    cube([Largeur,longeur_support+Epaisseur,Epaisseur],false);
    
    translate([0,-(longeur_support),-Hauteur/2-1*Epaisseur])
    cube([Largeur,longeur_support+Epaisseur,Epaisseur],false);

// Renfort
    /*
    hull(){
    polyhedron
        (points = [
                [Largeur,Epaisseur,Epaisseur],                    //0
                [Largeur,Epaisseur,Epaisseur+Epaisseur_Renfort],  //1
                [Largeur,Epaisseur+Epaisseur_Renfort,Epaisseur],  //2
                [0,Epaisseur,Epaisseur],                          //3
                [0,Epaisseur,Epaisseur+Epaisseur_Renfort],        //4
                [0,Epaisseur+Epaisseur_Renfort,Epaisseur]],       //5
                
        faces =[ 
                [0,1,2], [3,5,4], [1,4,2], [2,4,5]
               ]
        );
    }
*/
}
// Trou pour la vis
translate([Largeur/2,Epaisseur+10,-20])
#cylinder(40, d = Diametre, true);

translate([Largeur/2,-9.4,-40])
#cylinder(80, d = 3+0.8, true);
}