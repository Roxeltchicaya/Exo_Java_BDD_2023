ns<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
reponse exercice 1:
 public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Entrez un nombre : ");
        int valeur = scanner.nextInt();

        int carre = valeur * valeur;

        System.out.println("Le carré de " + valeur + " est : " + carre);
    }
}

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>
Reponse 2:
 int premiereValeur = scanner.nextInt();
int deuxiemeValeur = scanner.nextInt();
 int somme = premiereValeur + deuxiemeValeur;

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>
reponse exercice 3 :
   int somme = 0;
        boolean continuer = true;

        while (continuer) {
            System.out.println("Entrez une valeur (ou entrez 0 pour arrêter) : ");
            int valeur = scanner.nextInt();

            if (valeur != 0) {
                somme += valeur;
            } else {
                continuer = false;
            }
        }
<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>
reponse exercie 4:
 int valeurMax = Integer.MIN_VALUE;
        boolean continuer = true;

        while (continuer) {;
            int valeur = scanner.nextInt();

            if (valeur != 0) {
                valeurMax = Math.max(valeur, valeurMax);
            } else {
                continuer = false;
            }
        }

        if (valeurMax != Integer.MIN_VALUE) {
<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>
reponse exercice 5:
    int valeurMin = Integer.MAX_VALUE;
        boolean continuer = true;

        while (continuer) {
            int valeur = scanner.nextInt();

            if (valeur != 0) {
                valeurMin = Math.min(valeur, valeurMin);
            } else {
                continuer = false;
      
        if (valeurMin != Integer.MAX_VALUE) {
           
        } else {
          
        }
    }
}
<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
reponse exercice 6:
  int valeurLaPlusProcheDeZero = Integer.MAX_VALUE;
        boolean continuer = true;

        while (continuer) {
           ;
            int valeur = scanner.nextInt();

            if (valeur != 0) {
                if (Math.abs(valeur) < Math.abs(valeurLaPlusProcheDeZero)) {
                    valeurLaPlusProcheDeZero = valeur;
                }
            } else {
                continuer = false;
            }
        }

        if (valeurLaPlusProcheDeZero != Integer.MAX_VALUE) {
            System.out.println("La valeur la plus proche de zéro est : " + valeurLaPlusProcheDeZero);
        } else {
     
        }
    }
<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
reponse exercie 7 :
  int valeurLaPlusProcheDeZero = Integer.MAX_VALUE;
        boolean continuer = true;

        while (continuer) {
           
            int valeur = scanner.nextInt();

            if (valeur != 0) {
                int valeurAbsolue = Math.abs(valeur);
                int valeurLaPlusProcheAbsolue = Math.abs(valeurLaPlusProcheDeZero);

                if (valeurAbsolue < valeurLaPlusProcheAbsolue || (valeurAbsolue == valeurLaPlusProcheAbsolue && valeur > 0)) {
                    valeurLaPlusProcheDeZero = valeur;
                }
            } else {
                continuer = false;
            }
        }

        if (valeurLaPlusProcheDeZero != Integer.MAX_VALUE) {
           
        } else {
        
        }
    }
