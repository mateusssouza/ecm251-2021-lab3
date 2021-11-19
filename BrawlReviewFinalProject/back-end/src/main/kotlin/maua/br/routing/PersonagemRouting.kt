package maua.br.routing


import br.maua.db.DatabaseConector
import io.ktor.routing.*
import io.ktor.application.*
import io.ktor.response.*
import maua.br.Entidades.PersonagemEntidade
import maua.br.modelos.Personagem
import org.ktorm.dsl.from
import org.ktorm.dsl.map
import org.ktorm.dsl.select

fun Application.personagemRouting() {
    val db = DatabaseConector.database

    routing {
        get("/personagem") {
            val personagem = db.from(PersonagemEntidade).select()
                .map {
                    val id = it[PersonagemEntidade.id]
                    val nomeDoPersonagem = it[PersonagemEntidade.nomeDoPersonagem]
                    val ataque = it[PersonagemEntidade.ataque]
                    val defesa = it[PersonagemEntidade.defesa]
                    val utilidade = it[PersonagemEntidade.utilidade]
                    Personagem(id ?: -1, nomeDoPersonagem ?: "", ataque ?: -1, defesa ?: -1, utilidade ?: -1)
                }
            call.respond(personagem)
        }
    }

}