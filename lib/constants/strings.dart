import 'dart:core';

const String appName = "Blitz do machismo";
const String appDescription = "Selecione como ele foi machista, e nós enviaremos um e-mail de forma anônima para avisá-lo.";
const String machistEmail = "E-mail do machistinha";
const String sendEmail = 'Enviar e-mail';
const String betterUnderstanding = "Para entender melhor:";

/// Alerts
const String done = "Pronto (:";
const String emailSent = 'Enviamos e-mail informando que ele foi machista! Esperamos que a situação melhore, boa sorte!';
const String close = "Fechar";

const String somethingWrong = "Ops, algo errado";
const String wrongEmail = "Parece que o e-mail digitado não está correto! Por favor, verifique este e-mail";

const String noSelectedTypes = "Você precisa selecionar algum tipo de machismo, para que possamos ensiar o machista.";

/// TIPOS DE MACHISMO
const String manterrupting = "Manterrupting"; 
const String manterruptingExplanation = "Manterrupting é um termo que combina as palavras 'man' (homem) e 'interrupting' (interromper) e é usado para descrever a situação em que um homem interrompe constantemente uma mulher enquanto ela está falando, impedindo-a de concluir seus pensamentos ou expressar suas ideias. Esse comportamento pode ocorrer em diversas configurações, como reuniões de trabalho, discussões em grupo ou em situações cotidianas. \n\nO termo destaca uma dinâmica de gênero na qual homens têm mais propensão a interromper mulheres durante a comunicação. Isso pode acontecer devido a uma variedade de razões, incluindo diferenças culturais, normas sociais, ou falta de consciência sobre o impacto dessa interrupção. A prática do manterrupting pode contribuir para a marginalização das vozes femininas e dificultar a participação equitativa em conversas e tomadas de decisões."; 
const String manterruptingDescription = "Quando o machinho fica te interrompendo.";
const String bropriating = "Bropriating"; 
const String bropriatingExplanation = "'Bropriating' é um termo que combina as palavras 'bro' (uma gíria que se refere a um amigo ou companheiro, frequentemente usada entre homens) e 'appropriating' (apropriação). O termo é usado para descrever a situação em que um homem se apropria das ideias de uma mulher, muitas vezes sem dar crédito adequado ou reconhecimento à contribuição original dela. \n\nEssa prática pode ocorrer em ambientes de trabalho, acadêmicos ou sociais, onde as ideias das mulheres são ignoradas ou minimizadas, mas quando apresentadas por homens, recebem mais atenção e valorização. O bropriating destaca as desigualdades de gênero e a falta de reconhecimento das contribuições das mulheres em diversas áreas.\n"; 
const String bropriatingDescription = "Quando o machinho se apropria da sua ideia como se fosse a dele.";
const String mansplaining = "Mansplaining"; 
const String mansplainingExplanation = "'Mansplaining' é um termo que combina as palavras 'man' (homem) e 'explaining' (explicando) e é usado para descrever a situação em que um homem explica algo a uma mulher de maneira condescendente ou simplista, presumindo que ela tem menos conhecimento sobre o assunto, mesmo que ela possua experiência ou conhecimento igual ou superior.\n\nEssa prática é frequentemente observada em situações em que homens explicam conceitos, tópicos ou procedimentos a mulheres de uma maneira que pode ser percebida como arrogante, paternalista ou ignorante em relação à experiência e conhecimento da mulher naquele domínio. O mansplaining destaca uma dinâmica de gênero em que as mulheres são subestimadas ou não são levadas a sério, e isso pode ocorrer em vários contextos, incluindo o ambiente de trabalho, em casa ou em interações sociais.\n\nÉ importante observar que nem todas as explicações feitas por homens para mulheres são consideradas mansplaining, mas o termo é usado para descrever casos em que há uma atitude de superioridade ou condescendência baseada no gênero. \n"; 
const String mansplainingDescription = "Quando o machinho fica tentando te explicar aquilo que obviamente você ja sabe.";
const String gaslighting = "Gaslighting"; 
const String gaslightingExplanation = "'Gaslighting' é um termo que descreve uma forma de abuso psicológico no qual uma pessoa, frequentemente em um relacionamento, busca minar a percepção da realidade da outra pessoa. Isso é feito através de manipulações e táticas que fazem a vítima duvidar de sua própria memória, percepção ou sanidade mental. O termo tem origens em um filme chamado 'Gas Light' (1944), no qual o marido tenta fazer sua esposa acreditar que ela está ficando louca ao manipular as luzes em sua casa.\n\nAs táticas de gaslighting podem incluir: Negação, Minimização, projeção, descredibilização, isolamento."; 
const String gaslightingDescription = "Quando o machinho fica tentando te tirar pra doida e incapaz.";
const String visualHarassment = "Assédio visual"; 
const String visualHarassmentExplanation = "A objetificação sexual refere-se à prática de tratar uma pessoa como um objeto de desejo sexual, muitas vezes focando em partes específicas do corpo, como os seios. O assédio visual, por sua vez, descreve o ato de olhar persistentemente para alguém de maneira invasiva e desconfortável, muitas vezes com conotações sexuais.\n\nAmbos os comportamentos são inadequados, desrespeitosos e podem criar um ambiente desconfortável, especialmente no contexto profissional. As empresas geralmente têm políticas contra assédio sexual, incluindo comportamentos de objetificação ou assédio visual, e é importante que essas políticas sejam implementadas e respeitadas para manter um ambiente de trabalho saudável e respeitoso."; 
const String visualHarassmentDescription = "Quando o machinho fica olhando pras suas tetas e não pra sua cara.";
const String misogynistic = 'Misogeno';
const String misogynisticExplanation = 'Um homem misógino é alguém que expressa ódio, desprezo ou preconceito contra mulheres. A misoginia refere-se à aversão profunda, hostilidade ou discriminação sistemática baseada no gênero feminino. Um homem misógino pode exibir essas atitudes de várias maneiras, como verbalmente, através de comportamentos discriminatórios, ou apoiando ideias e práticas que desvalorizam ou prejudicam as mulheres.\n\nEssas atitudes podem se manifestar de várias formas, desde comentários depreciativos até a promoção de estereótipos de gênero prejudiciais. É importante destacar que a misoginia não é apenas um comportamento individual, mas também pode ser parte de estruturas sociais mais amplas que perpetuam a desigualdade de gênero.';
const String misogynisticDescription = "Quando o machinho é misógeno mesmo e ele fica destilando ódio contra mulheres."; 
const String sexualHarassment = "Assédio sexual";
const String sexualHarassmentDescription = "Quando o machinho tem comportamentos indesejados de natureza sexual.";
const String sexualHarassmentExplanation = "Assédio sexual é um comportamento não desejado de natureza sexual que envolve avanços, solicitações ou comentários indesejados, criando um ambiente desconfortável, hostil ou intimidante para a vítima. Pode ocorrer em diversos contextos, como no trabalho, na escola ou em situações sociais, e é uma forma de violência de gênero que viola os direitos e a dignidade da pessoa assediada. O assédio sexual é ilegal em muitas jurisdições e é geralmente considerado uma violação dos direitos humanos.";
