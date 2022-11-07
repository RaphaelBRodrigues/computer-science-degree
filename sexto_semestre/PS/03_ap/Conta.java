class Conta {
  int numero;
  double saldo;
  int status; //1-ATIVA 2-BLOQUEADA 3-CANCELADA
  int categoria; //1-COMUM 2-ESPECIAL 3-VIP

  /** Metodo construtor de <<create>>
   */
  public Conta(int numero) {
    this.saldo = 0;
    this.status = 1;
    this.categoria = 1;
    this.numero = numero;
  }

  /** Metodo creditar. Credita "valor" no saldo
   */
  public void creditar(double valor) {
    if (status == 1) {
      this.saldo = this.saldo + valor;

      if (this.saldo > 10000) {
        this.categoria = 3;
      } else if (this.saldo > 50000) {
        this.categoria = 2;
      }
    }
  }

  /** Metodo debitar. Debita "valor" do saldo
   */
  public void debitar(double valor) {
    if (status == 1) {
      this.saldo = this.saldo - valor;

      if (this.saldo < 0) {
        this.saldo = saldo - 10;
      } 
    }
  }
}