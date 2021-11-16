package maua.br.modelos

import kotlinx.serialization.Serializable

@Serializable
class Usuario (
    val idUsuario: Int,
    val nomeUsuario: String,
    val senhaUsuario: String,
)