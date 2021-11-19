package maua.br.Entidades

import maua.br.Entidades.PersonagemEntidade.primaryKey
import org.ktorm.schema.Table
import org.ktorm.schema.int
import org.ktorm.schema.varchar


object PersonagemEntidade : Table<Nothing>("Personagem"){
    val id =  int("id").primaryKey()
    val nomeDoPersonagem = varchar("Nome do personagem")
    val ataque = int("Ataque")
    val defesa = int("Defesa")
    val utilidade = int("Utilidade")

}