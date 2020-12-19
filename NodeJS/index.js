const express = require('express')
var cors = require('cors')
const app = express()

const bodyParser = require('body-parser');

app.use(cors())

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

var connectionDB

const mysql = require('mysql2');
var fs = require("fs");
var read = require('file-reader');
const { resolve } = require('path');
const createNewConnection = () => {
    
    return new Promise((resolve)=>{
        var connection = mysql.createConnection({
            host     : '127.0.0.1',
            port:      3306,
            user     : 'root',
            password : 'Pgs198300',
            database: 'difadopcion'
          });
      
          connection.connect((err) => {
            if (err) {
                console.log(err)
              resolve(null)
              return;
            }
            

            resolve(connection)

            
          });
    })
    
}
app.get('/api/prueba',async (req,res) =>{
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    else
    return res.json({success:true,msg:'bien'});
});

app.get('/api/usr/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query(`SELECT * FROM usuario where id_usuario = ?`, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    }) 
} )

app.get('/api/usrEmp/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query(`SELECT puesto_usr FROM personal where id_usuario = ?`, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    }) 
} )

app.get('/api/usrInt/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query(`SELECT * FROM usuario_interesado where id_usuario = ?`, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    }) 
} )


 
app.get('/api/solicitudes', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('SELECT * FROM Solicitud',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})

app.get('/api/listaEsp', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('SELECT *  FROM listas',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})

app.get('/api/infantes', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('SELECT * FROM Infante',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        //res.json({success:true,array});
        res.status(200).send(array);
    })    
})
app.get('/api/participaC', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query(`select usuario.nom_usuario,usuario.ape_musr, usuario.ape_puser, curso.nom_c 
    from usuario, participa_en, curso
    where 
    participa_en.id_curso = curso.id_curso and
    usuario.id_usuario = participa_en.id_usuario`,(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})

app.get('/api/soliNom', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query(`select distinct t1.nom_usuario, t1.ape_puser, t1.ape_musr, t2.id_usuario, t4.estado from usuario as t1, usuario_interesado as t2, cuenta_con as t3, solicitud as t4
    where 
    t1.id_usuario = t2.id_usuario and
    t3.id_usuario = t1.id_usuario and
    t3.id_solicitud = t4.id_solicitud`,(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})

app.get('/api/cursos', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('SELECT * FROM Curso',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})
app.get('/api/iniciars', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('select Usuario.id_usuario, Usuario.email_usr, Usuario.contra, Personal.puesto_usr from Usuario, Personal where Usuario.id_usuario = Personal.id_usuario',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }

        res.status(200).send(array);
        
    })    
})

app.get('/api/iniciarse', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('select Usuario.id_usuario, Usuario.email_usr, Usuario.contra from Usuario_Interesado, Usuario where Usuario_Interesado.id_usuario = Usuario.id_usuario',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})
app.post('/api/registroinfante',async (req,res) => {
    let body = req.body;
    
    var aleatorio = Math.round(Math.random()*10);
    let id;
    id = aleatorio + body.sec + body.numha
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    if(body.fech_en==""){
        body.fech_en = "0000-00-00";
    }
    let valor = [id,body.nomin,body.apepin,body.apemin,body.fe_nain,body.gender,body.fech_en,body.desc,body.nomtutor,body.apeptu,body.apemtu];
    connection.query(`CALL nuevoInfante(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`, valor,(err,array)=>{
       console.log(err)
       console.log(array)
        if(err){
          return res.json({success:false,err,msg:'Error de busqueda'})
      }
      if(array.affectedRows == 0){
          res.status(404).send(array);
      }else{
          res.status(200).send(array);
      }
  }) 
      
      
} )

app.post('/api/editarUsrInt',async (req,res) => {
    let body = req.body;
    
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    let query = `Update ${body.tabla} set ${body.col} = ? where id_usuario = ?`;
    connection.execute(query,[body.valor,body.id],(err, resp)=> {
        if(err){
            return res.json({success:false,err,msg:'No se actualizo'})
        }
        res.status(200).send({success:true,resp});
    }) 
    
} )



app.get('/api/admine', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('select usuario.id_usuario,usuario.nom_usuario, personal.puesto_usr from Usuario, Personal where usuario.id_usuario = personal.id_usuario',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})
app.post('/api/registroe',async (req,res) => {
    let body = req.body;
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    let llamarpro = 'CALL insertarempl(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
    let valor = [body.nombre,body.apep,body.apem,body.celular,body.telefono,body.calle,body.colonia,body.municipio,body.correo,body.contra,body.puesto];
    

      connection.query(`CALL insertarempl(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`, valor,(err,array)=>{
          console.log(err)
          console.log(array)
          if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
    }) 
    
} )

//Para eliminar un empleado
app.get('/api/bajaEmP/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    connection.query(`delete from Usuario where id_usuario = ? `, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'No se elimino'})
        }
        res.status(200).send(array);
    }) 
    
} )
//Para la creacion de cursos
app.post('/api/registroc',async (req,res) => {
    let body = req.body;
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    let valor = [body.duracion,body.fechaC,body.nombreC,0,body.Imparte];
    

      connection.query(`CALL crearCurso(?, ?, ?, ?, ?)`, valor,(err,array)=>{
         console.log(array)
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
        
    }) 
    
} )

//Para la creacion de un reporte
app.post('/api/registror',async (req,res) => {
    let body = req.body;
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    let valor = [body.fechaR,body.des,body.idinfante,body.idadoptante];
    

      connection.query(`CALL crearReporte(?, ?, ?, ?)`, valor,(err,array)=>{
         
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
        
    }) 
    
} )

app.get('/api/obtenerrep', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('select * from involucrados',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})
app.get('/api/bajaRep/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    connection.query(`delete from Reporte where id_reporte = ? `, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'No se elimino'})
        }
        res.status(200).send(array);
    }) 
    
} )

app.post('/api/registroint',async (req,res) => {
    let body = req.body;
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    
    //var link  = fs.realpath(body.carta)
    //var carta = fs.readFileSync(body.carta);
    //var carta = read.readAsDataURL(body.carta);
     //fs.readFileSync(body.carta);
    //let llamarpro = 'CALL insertarempl(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
    let valor = [body.nombre,body.apep,body.apem,body.celular,body.telefono,body.calle,body.colonia,body.municipio,body.correo,body.contra,body.gender,body.estadocivil,body.fech_na,body.sueldo,body.hijos,body.carta,body.enfermedad,body.propia,body.ocupacion];
    

      connection.query(`CALL InsertarInteresado(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`, valor,(err,array)=>{
          console.log(err)
          console.log(array)
          if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
    }) 
    
} )
app.get('/api/cursosuser/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    connection.query(`select curso.id_curso, curso.nom_c from curso, participa_en where curso.id_curso = participa_en.id_curso and participa_en.id_usuario = ? `, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'No se elimino'})
        }
        res.status(200).send(array);
    }) 
    
} )

app.post('/api/insc',async (req,res) => {
    let body = req.body;
    
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    connection.query(`CALL inscripcionCurso(?, ?)`,[body.idcurso,body.idusuario],(err,array)=>{
         
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
        
    }) 
     
} )

app.post('/api/modrep',async (req,res) => {
    let body = req.body;
    
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    if(body.fecha ==""){
        body.fecha = "0000-00-00";
    }
   
    connection.query(`update modificarrep set desc_rep = "${body.desc}", fecha_rep = "${body.fecha}" where id_reporte = "${body.id}"`,(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'No se actualizo'})
        }
        res.status(200).send(array);
    }) 
      
} )

app.get('/api/soliin/:id',async (req,res) => {
    let params = req.params;

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    
    connection.query(`select * from solicitudUser where id_usuario = ? `, [params.id],(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'No se elimino'})
        }
        res.status(200).send(array);
    }) 
    
} )

app.post('/api/realizarsoli',async (req,res) => {
    let body = req.body;
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    console.log(body)
    let valor = ["Enviada",body.idu];
    

      connection.query(`CALL crearSoli(?, ?)`, valor,(err,array)=>{
         
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
        
    }) 
    
} )

app.get('/api/extraer', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('select usuario.id_usuario, usuario.nom_usuario,usuario.ape_puser, usuario.ape_musr, usuario.cel_usr, solicitudUser.estado, solicitudUser.fecha, solicitudUser.id_solicitud from solicitudUser, usuario where solicitudUser.id_usuario = usuario.id_usuario',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})

app.post('/api/actualizarSoli',async (req,res) => {
    let body = req.body;
    
    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }
    let valor = [body.estado,body.id,body.infante];
    connection.query(`CALL actsolicitud(?, ?, ?)`, valor,(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error'})
        }
        if(array.affectedRows == 0){
            res.status(404).send(array);
        }else{
            res.status(200).send(array);
        }
    }) 
      
} )

app.get('/api/actualizarEspera', async (req, res) => {

    let connection = await createNewConnection()
    if(!connection){
        return res.json({success:false,msg:'Error de conexion'});
    }

    connection.query('CALL actlista',(err,array)=>{
        if(err){
            return res.json({success:false,err,msg:'Error de busqueda'})
        }
        res.status(200).send(array);
    })    
})
app.listen(3000)