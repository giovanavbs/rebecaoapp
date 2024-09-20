// classe de onibus com as informações
class Onibus {
  final String foto;
  final String nome;
  final String descricao;
  final String linkSite; // atributo do site

  Onibus({
    required this.foto,
    required this.nome,
    required this.descricao,
    required this.linkSite,
  });
}

List<Onibus> onibusList = [
  Onibus(
    foto: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm-YeehLK4zQEXUlYh4qM5CLah8Cn3aYk2_w&s',
    nome: "Caio Cabriela - 1980",
    descricao: "Os ônibus da classe dos Caios Gabrielas eram principalmente vistos no entorno da capital Paulista, e eram vistos durante o nosso dia a dia.",
    linkSite: 'https://saopauloantiga.com.br/22-onibus-paulistanos/', 
  ),
  Onibus(
    foto: 'https://i.imgur.com/mmFK6g0.jpeg',
    nome: "Mercedes Benz 364 - 1990",
    descricao: "O O-364 foi um dos modelos que ficaram para a história da Mercedes-Benz, principalmente fabricados em São bernardo dos Campos, mas sua produção foi encerrada em 1987.",
    linkSite: 'https://www.capital.sp.gov.br/w/noticia/conheca-o-museu-dos-transportes-publicos-gaetano-ferolla', 
  ),
  Onibus(
    foto: 'https://i0.wp.com/diariodotransporte.com.br/wp-content/uploads/2016/05/fofao-osas.jpg?resize=547%2C359&ssl=1',
    nome: "Scania ou \"Fofão\" - 1987",
    descricao: "Ao contrário do que parece, estes ônibus não funcionaram apenas na capital paulista, eles também circularam Osasco e em Recife por exemplo. Mas tinham uma reputação ruim, pela infraestrutura viária péssima eles não eram tão adequados.",
    linkSite: 'https://saopauloantiga.com.br/22-onibus-paulistanos/', 
  ),
  Onibus(
    foto: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjY925Fpiq_aQF9XZi12VHXQf5-BJhuLd7Qg&s',
    nome: "Trens de série 5500 - 2006 da CPTM",
    descricao: "Sendo trens elétricos, estes foram reformados e implantados em 2006, sendo modernizados a longo prazo. Utilizados em operações principalmente para a linha 8-Diamante.",
    linkSite: 'https://meutransportecptm.blogspot.com/2014/10/cptm-evolucao-do-transporte-ferroviario.html', 
  ),
  Onibus(
    foto: 'https://i0.wp.com/diariodotransporte.com.br/wp-content/uploads/2024/02/WhatsApp-Image-2024-02-18-at-18.39.44-e1708292433539.jpeg?fit=799%2C432&ssl=1',
    nome: "Trens de série - 2012 da CPTM",
    descricao: "Pertencidos a série de 8000 (e os primeiros a serem adotados neste conceito), representam até hoje o conceito de tecnologia, conforto e segurança da CPTM.",
    linkSite: 'https://meutransportecptm.blogspot.com/2014/10/cptm-evolucao-do-transporte-ferroviario.html', 
  ),
    Onibus(
    foto: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRble68xforCTaNfq88fflEQVwluasiMjgMXA&s',
    nome: "Trem 2100",
    descricao: "Conhecidos também como 'espanhóis', trabalhavam apenas na linha 10, concentrados a conectar o Brás ao Rio Grande da Serra. Eram elogiados por sua confiabilidade, conforto e boa capacidade de operação.",
    linkSite: 'https://meutransportecptm.blogspot.com/2014/10/cptm-evolucao-do-transporte-ferroviario.html', 
  ),
  Onibus(
    foto: 'https://i.imgur.com/z26CsBb.png',
    nome: "Trem Marfesa 1100",
    descricao: "O primeiro trem de aço inox do Brasil tem mais de 54 anos e atualmente vemos sua versão modernizada (a mesma apresentada). Ele prestava seus serviços entre Jundiaí e Paranapiacaba. Antigamente também chegou a prestar serviços para Santos, e uma de suas maiores características era conter um banheiro interior e usava um gerador de energia a gás para quando passasse por trajetos sem eletrificação.",
    linkSite: 'https://meutransportecptm.blogspot.com/2014/10/cptm-evolucao-do-transporte-ferroviario.html', 
  ),
];
