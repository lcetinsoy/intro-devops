
const express = require('express')
const app = express()
const port = 3000


//quand moi serveur web je reçoit une requête de type "GET" d'un client 
//sur l'url /hello, alors je renvoie "hello world"
app.get('/coucou', function(request, response) {
  
 

  response.send('bonjour')
})



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

