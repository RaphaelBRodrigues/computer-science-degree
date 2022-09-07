public class Material {
  private String descricao;
  private double preco;

  public Material(
    String descricao,
    double preco
  ) {
    this.descricao = descricao; 
    this.preco = preco; 
  }

  public String getDescricao() {
    return descricao;
  }

  public double getPreco() {
    return preco;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }

  public void setPreco(double preco) {
    this.preco = preco;
  }
}
