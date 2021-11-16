package maua.br.plugins


import br.maua.routing.avaliacaoRouting
import io.ktor.routing.*
import io.ktor.http.*
import io.ktor.application.*
import io.ktor.response.*
import io.ktor.request.*
import maua.br.routing.modoDeJogoRouting
import maua.br.routing.personagemRouting
import maua.br.routing.usuarioRouting

fun Application.configureRouting() {

    routing {
        get("/") {
                call.respondText("Hello World!")
            }
    }
    avaliacaoRouting()
    modoDeJogoRouting()
    personagemRouting()
    usuarioRouting()
}
