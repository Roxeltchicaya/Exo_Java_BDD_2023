<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>
reponse exercice 1:
  int compteur = 0;
        for (int i = 0; i < chaine.length(); i++) {
            if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
                compteur++;
            }
        }
<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>
reponse exercice 2:
 for (int i = 0; i < mot.length(); i++) {
            System.out.println(mot.charAt(i));
        }
    }
}
<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>
reponse exercice 3:
StringBuilder mot = new StringBuilder();

        for (int i = 0; i < phrase.length(); i++) {
            char c = phrase.charAt(i);
            if (c != ' ') {
                mot.append(c);
            } else {
                System.out.println(mot);
                mot = new StringBuilder();
            }
        }

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>
reponse exercice 4 :
  String phrase = scanner.nextLine();

        StringBuilder resultat = new StringBuilder();

        for (int i = 0; i < phrase.length(); i += 2) {
            resultat.append(phrase.charAt(i));
        }
<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>
reponse exercie 5:
StringBuilder verlan = new StringBuilder();
for (String mot : mots) {
            String motInverse = inverserMot(mot);
            verlan.append(motInverse).append(" ");
        }

        System.out.println("Verlan : " + verlan.toString().trim());
    }

    private static String inverserMot(String mot) {
        StringBuilder motInverse = new StringBuilder();
        for (int i = mot.length() - 1; i >= 0; i--) {
            motInverse.append(mot.charAt(i));
        }
        return motInverse.toString();
    }
}

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
reponse exercice 6 :
   String phrase = scanner.nextLine().toLowerCase();

        int voyelles = 0;
        int consonnes = 0;

        for (int i = 0; i < phrase.length(); i++) {
            char c = phrase.charAt(i);
            if (c >= 'a' && c <= 'z') {
                if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                    voyelles++;
                } else {
                    consonnes++;
                }
            }
        }

        System.out.println("Nombre de voyelles : " + voyelles);
        System.out.println("Nombre de consonnes : " + consonnes);
    }
}
