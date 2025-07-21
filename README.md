Um jogo clássico de quebra-cabeça deslizante (15-puzzle) implementado em Flutter, onde o objetivo é reorganizar os números em ordem sequencial movendo as peças para o espaço vazio.

🧩 Sobre o Jogo
- Tabuleiro: 4×4 (16 posições, sendo 1 vazia)
- Peças: Números de 1 a 15 + espaço vazio
- Movimento: Deslize peças adjacentes ao espaço vazio
- Objetivo: Ordene os números de 1 a 15 com o espaço vazio no canto inferior direito

🛠️ Funcionalidades Implementadas
✔️ Lógica de movimento válido (apenas peças adjacentes ao vazio)
✔️ Embaralhamento inicial aleatório
✔️ Interface limpa e responsiva
✔️ Toque simples para mover peças

⚙️ Como Executar
1. Tenha o Flutter instalado (versão estável recomendada)
2. Clone o repositório ou copie o código
3. Execute no terminal:
4. 
```
flutter pub get
flutter run
```

📝 Estrutura do Código
- MyApp: Widget principal
- MyHomePage: Estado do jogo e interface
- _mudaNum(): Lógica de movimento das peças
- GridView.count(4): Tabuleiro 4×4

💡 Possíveis Melhorias
- Contador de movimentos
- Cronômetro de jogo
- Botão de reinício
- Efeitos sonoros
- Diferentes temas visuais
- Sistema de dificuldade

Desenvolvido com Flutter por João Gabriel Santos de Jesus
