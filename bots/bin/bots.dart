

import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  
  

  //création de variables
  
  String pseudo;
  String entrer;
  int compteurTour;

  compteurTour = 0;   // initialisation du  Compteur de tour à 0
  
// Début du programme ........................

  print('Entrer votre pseudo : ');
  pseudo = stdin.readLineSync();

  //=========== Création des objets Bot1 et Player1 ===============================

  // Création d'un Bot

  var bot1 = Bot(1,100);

  // Création d'un Player

  var player1 = Player(1, 100, pseudo);

  //=========== Fin de la  Création des objets Bot1 et Player1 ===============================

  while (bot1.sante > 0 && bot1.force >0) {

    var nbrAleatoire = lancer(player1.pseudo);
    var nbrAleatoire2 = lancer('');
    

      print('${player1.pseudo} Appuyez sur "Entrée" pour lancer les dés : ');
      entrer = stdin.readLineSync();

      if (entrer == '') {

        lancer(player1.pseudo);

        print('---------------------------------------------------------->');
        print('${player1.pseudo} a lancer les dés et a obtenu $nbrAleatoire');
        bot1.sante = bot1.sante - nbrAleatoire;   // On décrémente le pourcentage de vie du Bot sante.bot = 100 - nbreAleatoire

        compteurTour += 1; // Incrémentation du compteur de tour  compteurtour = compteurTour + 1

        print('${player1.pseudo}  assène un coup sur le bot avec une force de $nbrAleatoire');
        print('Bot - Santé ${bot1.sante}%');
        print('..............');
        //lancer('Bot');
        player1.sante = player1.sante - nbrAleatoire2;
        print('Bot  assène un coup sur ${player1.pseudo} avec une force de $nbrAleatoire2');
        print('${player1.pseudo} - Santé ${player1.sante}%');
        print('Fin du tour $compteurTour');
        print('---------------------------------------------------------->');
        if(player1.sante > 0 && bot1.sante < 0) {
          print('${player1.pseudo} franck a gagné la partie');
          break;
          }else if(player1.sante < 0 && bot1.sante > 0){
            print('Le bot a gagné la partie');
            break;
          }
      //   if (compteurTour  == 14) {
      //   print('Fin de la partie');
      //   break;
      // }
      }else {
        print('Appuyer sur la touche "Entrer" de votre clavier');
      }

      
    
  }
    
// Fin du programme

}

// -------------------Class Bot

class Bot {
  // Propriétés

  int force;
  int sante;

  // Constructeur ou init

  Bot(this.force, this.sante);

  // Méthodes ou fonctions

}

int lancer(String nameGamer) {

  var nbrAleatoire1 = Random();
  var nbrAleatoire2 = Random();
  var a = nbrAleatoire1.nextInt(6) + 1;
  var b = nbrAleatoire2.nextInt(6) + 1;
  var somNbrAleatoire = a + b;
  // print('a $a');
  // print('b $b');
  // print('som $somNbrAleatoire');
 

  
  return somNbrAleatoire;
  //print('$nameGamer a lancé les dés et obtenu $somNbrAleatoire');

}

// -------------------Fin Class Bot


// -------------------Class Player


class Player extends Bot {
  String pseudo;

  Player(int force, int sante, String pseudo) : super(force, sante){
    this.pseudo = pseudo;
  }

 
   lancer() {
   
    var nbrAleatoire1 = Random();
    var nbrAleatoire2 = Random();
    var a = nbrAleatoire1.nextInt(6) + 1;
    var b = nbrAleatoire2.nextInt(6) + 1;
    var somNbrAleatoire2 = a + b;
    // print('a $a');
    // print('b $b');
    // print('som $somNbrAleatoire');
 

  
  return somNbrAleatoire2;

 }
      

    
    
}


  


// -------------------Fin Class Player

