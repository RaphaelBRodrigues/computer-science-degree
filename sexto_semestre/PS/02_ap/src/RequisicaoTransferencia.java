import java.util.Date;

public class RequisicaoTransferencia {
  private Date dataRequisicao;
  private Funcionario origem;
  private Funcionario destino;
  private Material material;

  public String isValid() {
    return "A requisição é válida";
  }

  public RequisicaoTransferencia(
    Date dataRequisicao,
   Funcionario origem,
   Funcionario destino,
   Material material
  ) {
    this.dataRequisicao = dataRequisicao;
    this.origem = origem;
    this.destino = destino;
    this.material = material;
  }

  public Funcionario getDestino() {
    return destino;
  }
  public Material getMaterial() {
    return material;
  }
  public Funcionario getOrigem() {
    return origem;
  }
  public void setDestino(Funcionario destino) {
    this.destino = destino;
  }
  public void setMaterial(Material materia) {
    this.material = materia;
  }
  public void setOrigem(Funcionario origem) {
    this.origem = origem;
  }
  public Date getDataRequisicao() {
    return dataRequisicao;
  }

  public void setDataRequisicao(Date dataRequisicao) {
    this.dataRequisicao = dataRequisicao;
  }
}
