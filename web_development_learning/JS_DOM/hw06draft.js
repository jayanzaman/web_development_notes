body = document.querySelector('body')
<body>​…​</body>​
body.innerHTML = '<section>'
"<section>"
section = document.querySelector('section')
<section>​</section>​
section = section.id="middle-earth"
"middle-earth"
body.innerHTML = '<article>'
"<article>"
body.innerHTML = '<section>'
"<section>"
body.innerHTML += '<article>'
"<section></section><article>"
article = document.querySelector('article')
<article>​</article>​
article.innerHTML = '<h1>'
"<h1>"
h1 = document.querySelector('h1')
<h1>​</h1>​

h1.innerText = "The Shire"
"The Shire"
section.innerHTML += '<article>'
"undefined<article>"
body.innerHTML += '<article>'
"<section></section><article><h1>The Shire</h1></article><article>"
article.innerHTML = '<h1>'
"<h1>"
body.innerHTML += '<article>'
"<section></section><article><h1>The Shire</h1></article><article></article><article>"
article1 = document.querySelector('article.nextSibling')
null
article.nextSibling
null
