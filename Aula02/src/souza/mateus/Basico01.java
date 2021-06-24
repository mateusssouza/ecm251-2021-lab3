package souza.mateus;

public class Basico01 {
    public static void main (String[] args) {
        //Tipos primitivos
        int numero;
        float hp;
        double atk; // tem mais precisao que o float
        boolean gigantamax;
        String nome;

        // Atribuição para as variáveis
        numero = 25;
        hp = 155.0f; // coloca f no final para dizer que é float
        atk = 255.0;
        gigantamax = true;
        nome = "Pikachu";

        //Exibe valores das variávais
        System.out.println("Nome: "+ nome);
        System.out.println("Gigantamax: "+ gigantamax);
        System.out.println("HP: "+ hp + " & atk: " + atk);

    }
}
