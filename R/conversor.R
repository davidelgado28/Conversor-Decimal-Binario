decimal_para_binario <- function(decimal) {
  if(decimal==0) return("0")

  binario <- ""
  numero <- decimal
  while(numero>0){
    binario <- paste0(numero %% 2, binario)
    numero <- numero %/% 2
  }
  binario
}
decimal <- as.integer(readline("Digite um numero decimal: "))
cat("Binario:", decimal_para_binario(decimal), "\n")
