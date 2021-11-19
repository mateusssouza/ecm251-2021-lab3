package maua.br.modelos

import kotlinx.serialization.Serializable

@Serializable
data class ModoDeJogo(
    val id: Int,
    val nomeDoModo: String
)