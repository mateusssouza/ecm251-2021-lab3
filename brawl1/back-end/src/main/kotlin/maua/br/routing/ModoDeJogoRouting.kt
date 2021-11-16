package maua.br.routing


import br.maua.db.DatabaseConector
import io.ktor.routing.*
import io.ktor.application.*
import io.ktor.response.*
import maua.br.Entidades.ModoDeJogoEntidade
import maua.br.modelos.ModoDeJogo
import org.ktorm.dsl.from
import org.ktorm.dsl.map
import org.ktorm.dsl.select

fun Application.modoDeJogoRouting() {
    val db = DatabaseConector.database

    routing {
        get("/modo-de-jogo") {
            val modoDeJogo = db.from(ModoDeJogoEntidade).select()
                .map {
                    val id = it[ModoDeJogoEntidade.id]
                    val nomeDoModo = it[ModoDeJogoEntidade.nomeDoModo]
                    ModoDeJogo(id ?: -1, nomeDoModo ?: "")
                }
            call.respond(modoDeJogo)
        }
    }

}