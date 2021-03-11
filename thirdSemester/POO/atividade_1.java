import java.util.Date;

class Main {

    public static void main(String[] args) {

        Date momento = new Date();

        int hora = momento.getHours();

        System.out.println(hora);
        if (hora >= 6 && hora < 12)
            System.out.println("BOM DIA World!");
        else if (hora > 18 || hora < 6)
            System.out.println("BOA NOITE World!");
        else
            System.out.println("BOA TARDE World!");

        System.out.println("fim!");
    }
}