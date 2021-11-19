package maua.br

import maua.br.Entidades.AvaliacaoEntidade
import io.ktor.application.*
import io.ktor.features.*
import io.ktor.serialization.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import maua.br.Entidades.ModoDeJogoEntidade
import maua.br.Entidades.PersonagemEntidade
import maua.br.Entidades.UsuarioEntidade
import maua.br.plugins.configureRouting
import org.ktorm.database.Database
import org.ktorm.dsl.insert


fun main() {
    embeddedServer(Netty, port = 8080, host = "0.0.0.0") {
        configureRouting()
        install(ContentNegotiation) {
            json()
        }

        val database = Database.connect(
            url = "jdbc:mariadb://192.168.56.101:3306/aplicacao",
            driver = "org.mariadb.jdbc.Driver",
            user = "admin",
            password = "admin"
        )


        database.insert(AvaliacaoEntidade){

            set(it.texto_de_opiniao, "Teste de texto de opiniao")

        }

        database.insert(ModoDeJogoEntidade){

            set(it.nomeDoModo, "teste do nome do modo")

        }

        database.insert(PersonagemEntidade){

            set(it.nomeDoPersonagem, "teste do nome do personagem")
            set(it.ataque, 5)
            set(it.defesa, 2)
            set(it.utilidade, 3)

        }

        database.insert(UsuarioEntidade){

            set(it.nomeUsuario, "teste do nome de usuario")
            set(it.senhaUsuario, "Teste de senha")

        }


    }.start(wait = true)
}
