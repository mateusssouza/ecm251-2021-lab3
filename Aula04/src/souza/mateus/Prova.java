package souza.mateus;

//public class Main {
//
//    public static void main(String[] args) {
//	    // Criar uma referencia para Conta
//        Conta c1;
//        //Instanciar um objeto conta
//        c1 = new Conta();
//
//        c1.depoistar(300);
//        c1.sacar(250);
//        c1.saldo = 300;
//        c1.visualizarSaldo();
//    }
//}

public class Prova{
        public static void main (String[] args) {
            int valor = calcula( new int[] {6,8,9,2}, new int[] {6,2,4} );
            System.out.print (valor);
        }
        public static int calcula( int[] vi, int[] v2 ) {
            int t;
            if (vl.length > v2.length) {
                t = vl.length;
            } else {
                t = v2.length;
            }
            int r = 0;
            for (int i=0; i < t; i++) {
                r += vl[i] * v2 [i];
            }
            return r;
        }
}