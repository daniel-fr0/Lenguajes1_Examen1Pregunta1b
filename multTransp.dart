void main() {
  // Probando multTransp
  List<List<int>> A = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> res = multTransp(A);
  for (int i = 0; i < res.length; i++) {
    print(res[i]);
  }
}

List<List<int>> multTransp(List<List<int>> A) {
  return mult(A, transp(A));
}

List<List<int>> mult(List<List<int>> A, List<List<int>> B) {
  List<List<int>> C = [];
  // Por cada fila de A
  for (int i = 0; i < A.length; i++) {
    C.add([]);
    // Por cada columna de B
    for (int j = 0; j < B[0].length; j++) {
      C[i].add(0);
      // Se multiplica la fila de A por la columna de B
      for (int k = 0; k < A[0].length; k++) {
        C[i][j] += A[i][k] * B[k][j];
      }
    }
  }
  return C;
}

List<List<int>> transp(List<List<int>> A) {
  List<List<int>> At = [];
  // Por cada columna de A
  for (int i = 0; i < A[0].length; i++) {
    At.add([]);
    // Por cada fila de A
    for (int j = 0; j < A.length; j++) {
      // Se agrega el elemento opuesto a At
      At[i].add(A[j][i]);
    }
  }
  return At;
}
