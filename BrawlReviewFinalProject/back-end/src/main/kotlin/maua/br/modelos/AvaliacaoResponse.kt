package maua.br.modelos

import kotlinx.serialization.Serializable

@Serializable
data class AvaliacaoResponse<T>(
    val data: T,
    val success: Boolean
)
