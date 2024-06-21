Projeto desafio 360crm

#Branches
- `main`: Produção.
- `develop`: Desenvolvimento.


------------ Para criar uma branch de feature-----------------
   
primeiro, crie uma nova branch 

   git checkout -b feature/exemplo

Adicione as mudanças ao índice

   git add .

Faça o commit 

   git commit -m "Mensagem"

Mude para a branch develop

   git checkout develop

Faça o Merge a branch de feature

   git merge feature/exemplo

Envie para o Github

   git push origin develop

Depois de concluir e testar todas as mudanças na branch develop, mude para a branch main e siga o mesmo processo

   git checkout main
   
   git merge develop
  
   git push origin main
