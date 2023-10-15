void main() {
  for (int i = 0; i < 10; i++) {
    print(rotar("hola", i));
  }

  print(rotar("", 2));
  print(rotar("x", 1));
  print(rotar("hola", 0));
}

String rotar(String w, int k) {
  // El string queda igual si tiene uno o cero caracteres
  if (w.length <= 1) return w;

  // Se divide la cadena en dos partes de acuerdo al modulo de k y la longitud
  // asi se obtiene la rotacion final
  return w.substring(k % w.length) + w.substring(0, k % w.length);
}
