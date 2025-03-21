
# 🛠️ Script de Criação de Estrutura de Usuários e Diretórios no Linux

Este projeto contém um script Bash que automatiza a criação de uma estrutura de usuários, grupos e diretórios com permissões específicas. Ele é ideal para simular cenários de departamentos em empresas ou para uso didático em ambientes de estudo.

## 🚀 Funcionalidades

O script realiza as seguintes tarefas:

- 📁 Criação de diretórios:
  - `/adm`
  - `/ven`
  - `/sec`
  - `/publico`

- 👥 Criação de grupos:
  - `GRP_ADM`
  - `GRP_VEN`
  - `GRP_SEC`

- 👤 Criação de usuários e associação aos grupos:
  - **ADM**: carlos, maria, joao
  - **VEN**: debora, sebastiana, roberto
  - **SEC**: josefina, amanda, rogerio

- 🔐 Definição de permissões:
  - Diretórios dos grupos com permissão `770` (acesso restrito ao grupo)
  - Diretório `/publico` com permissão `777` (acesso total)

## ⚙️ Como usar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/meiotera/linux-infra-como-codigo.git
   cd linux-infra-como-codigo
2. **Dê permissão de execução ao script:**
   ```bash
   chmod +x script.sh
3. **Execute o script como root ou com sudo:**
   ```bash
   sudo ./script.sh

## ⚠️ Observações:
  - As senhas dos usuários são todas definidas como 123mudar e criptografadas com openssl passwd -6.
  - O script assume que você está em um sistema compatível com comandos useradd, groupadd, mkdir, chmod e chown (como Ubuntu ou Debian).
  - Execute apenas em ambientes de teste ou com total controle, pois ele cria usuários reais no sistema.


