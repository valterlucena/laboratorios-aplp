#include <iostream>
#include <string>

using namespace std;

string inverte(string palavra) {
    string nova = "";

    for (int i = palavra.length() - 1; i >= 0; i--) {
        nova = nova + palavra[i];
    }

    return nova;
}

int main() {

    string k;
    cin >> k;

    int tamanho;
    cin >> tamanho;

    string lista[tamanho];

    for (int i = 0; i < tamanho; i++) {
        cin >> lista[i];
    }

    for (int i = 0; i < tamanho; i ++) {
        if (lista[i].find(k) != string::npos) {
            cout << inverte(lista[i]) << endl;
        } else {
            cout << lista[i] << endl;
        }
    }


    return 0;
}
