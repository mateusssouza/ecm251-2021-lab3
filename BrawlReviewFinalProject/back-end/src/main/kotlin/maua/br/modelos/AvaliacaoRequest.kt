package maua.br.modelos

import kotlinx.serialization.Serializable

@Serializable
data class AvaliacaoRequest(
    val texto_de_opiniao: String,
    val idUsuario: Int,
    val idModo: Int,
    val idPersonagem: Int
)