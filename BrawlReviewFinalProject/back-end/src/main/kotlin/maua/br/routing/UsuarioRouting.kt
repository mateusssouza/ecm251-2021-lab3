package maua.br.routing

import maua.br.Entidades.UsuarioEntidade
import maua.br.modelos.Usuario

import br.maua.db.DatabaseConector
import io.ktor.routing.*
import io.ktor.application.*
import io.ktor.response.*
import org.ktorm.dsl.from
import org.ktorm.dsl.map
import org.ktorm.dsl.select

fun Application.usuarioRouting() {
    val db = DatabaseConector.database

    routing {
        get("/usuario") {
            val usuario = db.from(UsuarioEntidade).select()
                .map {
                    val idUsuario = it[UsuarioEntidade.idUsuario]
                    val nomeUsuario = it[UsuarioEntidade.nomeUsuario]
                    val senhaUsuario = it[UsuarioEntidade.senhaUsuario]
                    Usuario(idUsuario ?: -1, nomeUsuario ?: "", senhaUsuario ?: "")
                }
            call.respond(usuario)
        }
    }
}