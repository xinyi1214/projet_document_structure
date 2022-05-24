# projet document structuré
L'objectif de ce projet est de transformer trois fichiers d'otd à un site qu'on peut visualiser les documents bien structurés et on peut aussi chercher certaines informations dans les documents.

Au début, j'ai dézippé les fichiers otd qui me permet de récupéré deux fichiers xml importants, le fichier content.xml et le fichier meta.xml.
Et puis, pour transformer les documents aux TEI, il fallait bien faire xslt. Dans ce cas, j'ai fait deux fichiers xslt afin d'avoir la tête du TEI et le body du TEI.
Jusqu'à cette étape, j'ai bien eu trois fichiers xml de chaque document. Donc, j'ai avancé aux étapes avec l'aide du logiciel existDB.
Pourtant, je pense que ça va être plus clair pour moi si je fais premièrement tous les fichiers xlst pour bien transformer la première interface (xml) en html ainsi que transformer les trois fichiers TEI en html par logiciel Oxygen.
Et puis, j'ai ajouté une fonction XMLtoHMTML au fichier app.xql pour lier les fichiers xml et les fichiers xlst et les afficher dans le site.
Afin de faire de la recherche, j'ai créé un nouveau fichier interface2.xql. J'ai fait deux recherches. La première est que quand on tape le titre entre les trois documents, il va afficher son titre. La deuxième est que quand on cherche un mot, s'il existe dans les trois documents, il va afficher les paragraphes qui contiennent ce mot. 
Finalement, j'ai modifié un peu pour bien afficher le site.

