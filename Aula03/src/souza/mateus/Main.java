package souza.mateus;

public class Main {

    public static void main(String[] args) {
        System.out.println("Teste1");
	    // Criar uma referencia para Conta
        Conta c1;
        //Instanciar um objeto conta
        c1 = new Conta();
        c1.cliente = new Cliente();

        c1.cliente.titular = "Inuyasha";
        c1.saldo = 199.99;

        c1.visualizarSaldo();
        c1.visualizarSaldo();

        Conta c2 = new Conta();
        c2.cliente = new Cliente();
        c2.cliente.titular = "Seichomaru";
        c2.saldo = 1000;
        c2.visualizarSaldo();

        c1.depoistar(20);
        c2.depoistar(55.99);

        c1.visualizarSaldo();
        c2.visualizarSaldo();

        if(c1.sacar(100)){
            System.out.println("Saque concluido com sucesso");
        }else{
            System.out.println("Saldo insuficiente para saque");
        }
        c1.visualizarSaldo();

        if(c1.transferirPara(1000,c2)){
            System.out.println("Tranferencia concluida");
        } else {
            System.out.println("Saldo insuficiente para transferencia");
        }
        c1.visualizarSaldo();
        c2.visualizarSaldo();

        System.out.println("C1: "+ c1.toString());
        System.out.println("C2: "+ c2.toString());
    }
}
