package br.maua.routing

import maua.br.Entidades.AvaliacaoEntidade
import br.maua.db.DatabaseConector
import maua.br.modelos.Avaliacao
import io.ktor.routing.*
import io.ktor.application.*
import io.ktor.http.*
import io.ktor.request.*
import io.ktor.response.*
import maua.br.modelos.AvaliacaoRequest
import maua.br.modelos.AvaliacaoResponse
import org.ktorm.dsl.from
import org.ktorm.dsl.insert
import org.ktorm.dsl.map
import org.ktorm.dsl.select

fun Application.avaliacaoRouting() {
    val db = DatabaseConector.database

    routing {
        get("/avaliacao") {
            val avaliacao = db.from(AvaliacaoEntidade).select()
                .map {
                    val id = it[AvaliacaoEntidade.id]
                    val texto_de_opiniao = it[AvaliacaoEntidade.texto_de_opiniao]
                    val idUsuario = it[AvaliacaoEntidade.idUsuario]
                    val idModo = it[AvaliacaoEntidade.idModo]
                    val idPersonagem = it[AvaliacaoEntidade.idPersonagem]
                    Avaliacao(id ?: -1, texto_de_opiniao ?: "", idUsuario ?: -1, idModo ?: -1, idPersonagem?: -1)
                }
            call.respond(avaliacao)
        }

        post("/avaliacao"){
            val request = call.receive<AvaliacaoRequest>()
            val result = db.insert(AvaliacaoEntidade){
                set(it.texto_de_opiniao, request.texto_de_opiniao)
                set(it.idModo, request.idModo)
                set(it.idPersonagem, request.idPersonagem)
                set(it.idUsuario, request.idUsuario)

            }

            if (result == 1){
                // send successfully response to de client
                call.respond(HttpStatusCode.OK, AvaliacaoResponse(
                    success = true,
                    data = "Sucesso na insercao do valor"
                ))
            } else {
                // send failure response to de client
                call.respond(HttpStatusCode.BadRequest, AvaliacaoResponse(
                    success = false,
                    data = "Falha na insercao do valor"
                ))
            }
        }

    }
}