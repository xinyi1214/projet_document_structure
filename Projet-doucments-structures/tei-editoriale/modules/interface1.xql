xquery version "3.1";

module namespace acc="http://localhost:8080/exist/apps/hello/acc";

declare function acc:accueil($node as node(), $model as map(*)){
    <div xmlns="http://www.w3.org/1999/xhtml" data-template="templates:surround" data-template-with="templates/page.html" data-template-at="content">
   
   
   <div class="header">
      <h1 align="center">Projet XML</h1>
      <h3>Xinyi Shen</h3>
      <h3>M2 IM</h3>
      <p>Ce site a été réalisé dans le cadre du cours Documents Structurés du M2 en IM.</p>
   </div>
   
   
   <nav><a href="http://localhost:8080/exist/apps/hello/cherche.html">Recherche</a></nav> 
   
   <nav><a href="http://localhost:8080/exist/apps/hello/texte.html">Visualisation des textes</a></nav>
   
   
   <h2>Objectif du projet</h2>
   <p>L'objectif de ce projet est de transformer trois fichiers d'otd à un site qu'on peut
      visualiser les doucments bien structués et on peut aussi chercher certains informations
      dans les documents.</p>
    <br/>
    <h2>Étapes des projets</h2>
   <p>Au début, j'ai zippé les fichiers otd qui me permet de récupéré deux fichiers xml
      importants, le fichier content.xml et le fichier meta.xml </p>
   <p>Et puis, pour transformer les doucments aux TEI, il fallait bien fait xslt. Dans ce
      cas, j'ai fait deux fichiers xslt afin d'avoir la tête du TEI et le body du TEI.</p>
   <p>Jusqu'à cette étape, j'ai bien eu trois fichiers xml de chaque document. Donc, j'ai
      avancé aux étapes avec l'aide du logiciel existDB.</p>
   <p>Pourtant, je pense que ça va être plus clair pour moi si je fait primièrement tous
      les fichiers xlst pour bien transformer la première interface (xml) en html anisi
      que transformer les trois fichiers TEI en html par logiciel Oxygen.</p>
   <p>Et puis, j'ai ajouté une function XMLtoHMTML au fichier app.xql pour lier les fichiers
      xml et les fichiers xlst et les afficher dans le site.</p>
   <p>Afin de faire la recherche, j'ai crée un nouveau fichier interface2.xql. J'ai fait
      deux recherche. La première est que quand on tape le titre entre les trois doucments,
      il va afficher son titre. La deuxième est que quand on cherche un mot, s'il existe
      dans les trois doucments, il va afficher les paragraphes qui contiennent ce mot. </p>
   <p>Au final, j'ai modifié un peu pour bien afficher le site.</p>
   <br/>
   <h2>Difficultés</h2>
   <p>J'ai rencontré plusieurs difficultés. Premièrement, après avoir fini la première partie
      du projet, j'ai trouvé que les textes étaient repétés quand il y a avait plusieurs
      parties de ce article.</p>
   <p>Donc, j'ai refait la première partie et j'ai utilisé le "following-sibling" et aussi des "choose" pour résoudre ce problème.</p>
   <p>Deuxièmement, quand j'ai essayé de faire le site, au début, j'ai mis trois pages dans un seul fichier html, mais je n'ai pas trouvé un moyen de séparer trois page en un seul fichier. À la fin, j'ai créer trois fichiers html différents.
   <p> J'ai aussi deux problèmes que je ne suis pas arrivée de résoudre.
   </p>
   <p>Le premier problème, pour la recherche sur les articles. J'ai fait deux recherches pour chercher les auteurs et les titres. Pourtant, je n'ai pas trouver le moyen afin d'afficher les résultats après s'appuyer le button "search".</p>
   <p>Le deuxième problème, même si j'ai bien créer le premier page en xml et le transformé en html et le validé par le fichier rng, je ne peux pas faire la page html dans mon site. Donc, j'ai fait une autre version par un autre fichier xql.</p>
   <p>Il y a pas mal de choses sur ExisteDB que je n'ai pas bien compris et je vais continuer apprendre en futur, par exemple, dans le nouveau cours Web, BD, sites mulitilingues et localisation.</p>
   </p>
   </div>
};

