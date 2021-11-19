# BrawlStars Review

This is a project to a computing engenniering class.
The main objective was to create a web-site to review a character of a game, and we choose Brawl Stars to be our game. You can review a character on a specific game mode, letting all the brawl community to know what you think. 

## Getting Started

- The project data base was made with MariaDb Virtual Machine and used DBeaver to manage the data base, along with the get and post commands from the back-end code.
- The data base has four tables *-* : 
  * Avaliacao (Where the avaliantions are storaged)
    * id ( primary key that refers to the avaliation indentificator )
    * Texto de opiniao ( Where the review text is stored )
    * idUsuario ( a foreigh key that connects the user to the review made )
    * idModo ( a foreigh key that connects a game mode to the review made )
    * idPersonagem ( a foreigh key that connects the character to the review made )
    
  * Modo de jogo (Where the information about the game mode is stored)
    * idModo ( primary key that refers to the mode indentificator )
    * Nome do modo ( Where the game mode name is stored )
    
  * Personagem (Where the information about the character is stored)
    * idPersonagem ( primary key that refers to the character indentificator )
    * Nome do personagem ( Where the character name is stored )
    * Ataque ( Where the character attack value is stored )
    * Defesa ( Where the character defense value is stored )
    * Utilidade ( Where the character utility value is stored )


  * Usuario (Where the information about the user is stored)
    * idUsuario ( primary key that refers to the user indentificator )
    * Nome ( Where the user name is stored )
    * Senha ( Where the user password is stored )

- The back-end is a Kotlin project using Gradle.
- Ideally, the project has routing to connect front and back-end

