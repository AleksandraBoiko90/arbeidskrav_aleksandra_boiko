const express = require('express');


// const mysql = require('mysql2');
const mysql = require('mysql2/promise');
let con = null;
(async () => {
    const user = "student"
    const password = "Str0ngP@ssw0rd!"

    con = await mysql.createConnection({
        host: "localhost",
        user: user,
        password: password,
        // user: "root",
        // password: "my-secret-pw",
        port: 3307,
        database: "aleksandra_boiko"
    });


})()




const get_speakers = async () => {
    const sql = "select * from speakers";
    const [rows, fields] = await con.execute(sql);
    return rows;

}

const get_speaker = async (id) => {
    const sql = "select * from speakers where id = " + id;
    const [rows, fields] = await con.execute(sql);
    return rows[0];    
}
const add_speaker = async (speaker) => {
    const sql = 
    `insert into speakers (first_name, last_name, email, gender, phone_number, bio, company) 
    values ('${speaker.first_name}', '${speaker.last_name}', '${speaker.email}', '${speaker.gender}', '${speaker.phone_number}', '${speaker.bio}', '${speaker.company}')`; 

    const [result, _] = await con.execute(sql);
    return result.insertId;    
}
const update_speaker = async (speaker_id, speaker) => {

    const sql = 
    `update speakers set
        first_name = '${speaker.first_name}', last_name = '${speaker.last_name}'
        , email = '${speaker.email}', gender = '${speaker.gender}'
        , phone_number = '${speaker.phone_number}', bio = '${speaker.bio}', company = '${speaker.company}'
    where id = ${speaker_id}
        `

    const [result, _] = await con.execute(sql);
    // console.log(result, _);
    
    
}
const delete_speaker = async (id) => {
    const sql = "delete from speakers where id = " + id;
    const [rows, fields] = await con.execute(sql); 
}

const app = express();
const port = 5000;

app.use(express.json());

app.listen(port, () => { console.log("listen port ", port); });


//    * Докладчики:
// * GET /api/speakers — Get a list of all speakers.
app.get("/api/speakers", async (req, res) => {
    const r = { speakers: await get_speakers() };
    res.json(r);
})
// * GET /api/speakers/:id — Get details of a specific speaker.
app.get("/api/speakers/:id", async (req, res) => {
    const r = await get_speaker(req.params.id) ;
    if (r == undefined){
        res.status(404);
    }
    res.json(r);
})
// * POST /api/speakers — Add a new speaker.
app.post("/api/speakers", async (req, res) => {
    const r = await add_speaker(req.body) ;
    res.status(201).json({id:r}); 
})
// * PUT /api/speakers/:id — Update information of an existing speaker.
app.put("/api/speakers/:id", async (req, res) => {
    const r = await update_speaker(req.params.id, req.body) ;
    res.status(200).end(); 
})
// * DELETE /api/speakers/:id — Delete speaker.
app.delete("/api/speakers/:id", async (req, res) => {
    const r = await delete_speaker(req.params.id) ;
    res.status(200).end(); 
})





const get_rooms = async () => {
    const sql = "select * from rooms";
    const [rows, fields] = await con.execute(sql);
    return rows; 
}

const get_room = async (id) => {
    const sql = "select * from rooms where id = " + id;
    const [rows, fields] = await con.execute(sql);
    return rows[0];    
} 

const update_room = async (id, room) => {

    const sql = 
    `update rooms set
        number = '${room.number}', description = '${room.description}' 
    where id = ${id}
        ` 
    const [result, _] = await con.execute(sql); 
    return result.affectedRows;
}




// * Залы и время:
// * GET /api/rooms — Get a list of available rooms.
app.get("/api/rooms", async (req, res) => {
    const r = { speakers: await get_rooms() };
    res.json(r);
})
// * GET /api/rooms/:id — Details of a specific room.
app.get("/api/rooms/:id", async (req, res) => {
    const r = await get_room(req.params.id) ;
    if (r == undefined){
        res.status(404);
    }
    res.json(r);
})
// * PUT /api/rooms/:id — Update room information and presentation time.
app.put("/api/rooms/:id", async (req, res) => {
    const affectedRows = await update_room(req.params.id, req.body) ;
    if (affectedRows == 0){
        res.status(404);
    } else {
        res.status(200)
    }
    res.end(); 
})





const get_talks = async () => {
    const sql = "select * from talks";
    const [rows, fields] = await con.execute(sql);
    return rows;

}

const get_talk = async (id) => {
    const sql = "select * from talks where id = " + id;
    const [rows, fields] = await con.execute(sql);
    return rows[0];    
}
const add_talk = async (talk) => {
    //Each room can accommodate up to 6 presentations, starting at 10:00 AM. 
    const sql = 
    `insert into talks (speaker_id, room_id, time, topic) 
    values (${talk.speaker_id}, ${talk.room_id}, '${talk.time}', '${talk.topic}')`; 

    const [result, _] = await con.execute(sql);
    return result.insertId;    
}
const update_talk = async (id, talk) => {
    const sql = 
    `update talks set
        speaker_id = ${talk.speaker_id}, room_id = ${talk.room_id}
        , time = '${talk.time}', topic = '${talk.topic}' 
    where id = ${id}
        `

    const [result, _] = await con.execute(sql);
    return result.affectedRows;
    
    
}
const delete_talk = async (id) => {
    const sql = "delete from talks where id = " + id;
    const [result, fields] = await con.execute(sql); 
    return result.affectedRows;
}



// * Presentation:
// * GET /api/talks — Get a list of all presentations.
app.get("/api/talks", async (req, res) => {
    const r = { talks: await get_talks() };
    res.json(r);
});
// * GET /api/talks/:id — Get details of a specific presentation.
app.get("/api/talks/:id", async (req, res) => {
    const r =  await get_talk(req.params.id);
    if (r == undefined){
        res.status(404);
    }
    res.json({ talks: r});
});
// * POST /api/talks — Add a new presentation.
app.post("/api/talks", async (req, res) => {
    const id = await add_talk(req.body);
    res.status(201).json({id:id}); 
    
});
// * PUT /api/talks/:id — Update information of an existing presentation.
app.put("/api/talks/:id", async (req, res) => {
    const affectedRows = await update_talk(req.params.id, req.body) ;
    if (affectedRows == 0){
        res.status(404);
    } else {
        res.status(200)
    }
    res.end(); 
    
});
// * DELETE /api/talks/:id — Delete presentation.
app.delete("/api/talks/:id", async (req, res) => { 
    const affectedRows =   await delete_talk(req.params.id);
    if (affectedRows == 0){
        res.status(404);
    } else {
        res.status(200)
    }
    res.end(); 
    
});