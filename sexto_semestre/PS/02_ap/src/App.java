import java.util.Date;

public class App {
    public static void main(String[] args) throws Exception {
        Material material = new Material("Teste", 1.2);
        Funcionario origem = new Funcionario("Func Um");
        Funcionario destino = new Funcionario("Func dois");
        Date data = new Date();

        RequisicaoTransferencia requisicaoTransferencia = new RequisicaoTransferencia(
            data,
            origem,
            destino,
            material
        );
        System.out.println(requisicaoTransferencia.isValid());
        }
}
