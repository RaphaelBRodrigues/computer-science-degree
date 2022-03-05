package main

import (
	"fmt"
  "os"
  "bufio"
  "strconv"
  "strings"
  "math"
)

func displayPanelAndSelectOption() int {
  fmt.Print("\n\n1 - SOMA\n2 - SUBTRAÇÃO\n3 - MULTIPLICAÇÃO\n4 - DIVISÃO\n5 - ELEVAR NÚMERO AO QUADRADO\n6 - ELEVAR NÚMERO AO CUBO\n7 - RAIZ QUADRADA\n8 - RAIZ CÚBICA\n9 - LOGARITMO\n");

  fmt.Print("Selecione uma operação: ");
  
	convertedTypedOption, _ := readEntries(true);
  
  if (convertedTypedOption > 9) {
    fmt.Print("Invalid operation");
    displayPanelAndSelectOption();
    return 0;
  } 

  return int(convertedTypedOption);
}

func readEntries(singleEntry bool) (float64, float64) {
    reader := bufio.NewReader(os.Stdin);
    firstTypedOption, _:= reader.ReadString('\n');
    firstTrimedOption := strings.TrimSuffix(firstTypedOption, "\n")
    firstConvertedTypedOption, _:= strconv.ParseFloat(firstTrimedOption, 32);

  if (singleEntry) {
    return firstConvertedTypedOption, 0;
  } else {  
    secondTypedOption, _:= reader.ReadString('\n');
    secondTrimedOption := strings.TrimSuffix(secondTypedOption, "\n")
    secondConvertedTypedOption, _:= strconv.ParseFloat(secondTrimedOption, 32);
    
    return firstConvertedTypedOption, secondConvertedTypedOption;
  }
}

func sum() float64 {
  fmt.Print("Insira dois valores: \n");
  a, b := readEntries(false);
  return a + b;
}

func subtraction() float64 {
  fmt.Print("Insira dois valores: \n");
  a, b := readEntries(false);
  return a - b;
}

func multiplication() float64 {
  fmt.Print("Insira dois valores: \n");
  a, b := readEntries(false);
  return a * b;
}

func division() float64 {
  fmt.Print("Insira dois valores: \n");
  a, b := readEntries(false);
  return a / b;
}

func squaredNumber() float64 {
  fmt.Print("Insira a base: \n");
  a, _:= readEntries(true);
  return a * a;
}

func cubedNumber() float64 {
  fmt.Print("Insira a base: \n");
  a, _:= readEntries(true);
  return a * a * a;
}

func squareRoot() float64 {
  fmt.Print("Insira um número: \n");
  a, _:= readEntries(true);
  
  return math.Sqrt(a);
}

func cubicRoot() float64 {
  fmt.Print("Insira um número: \n");
  a, _:= readEntries(true);
  
  return math.Cbrt(a);
}

func logarithm() float64 {
  fmt.Print("Insira um número: \n");
  a, _:= readEntries(true);
  
  return math.Log(a);
}

func calcValue(number int) float64{
  switch number {
    case 1:
      return sum();
    case 2:
      return subtraction();
    case 3:
      return multiplication();
    case 4:
      return division();
    case 5:
      return squaredNumber();
    case 6:
      return cubedNumber();
    case 7:
      return squareRoot();
    case 8:
      return cubicRoot(); 
    case 9:
      return logarithm();
    default:
      fmt.Print("Invalid operation");
      return 0;
  }
}

func initCalculator() {
	option := displayPanelAndSelectOption();
  value := calcValue(option);

  fmt.Print("Resultado: ", value);

  initCalculator();
}

func main() {
  initCalculator();
}
