package maua.br.modelos

import kotlinx.serialization.Serializable

@Serializable
data class Personagem (
    val id: Int,
    val nomeDoPersonagem: String,
    val ataque: Int,
    val defesa: Int,
    val utilidade:  Int
)
