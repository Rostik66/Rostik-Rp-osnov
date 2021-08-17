
const mysql = require('./mysql.js');

const postTime = new Date().getTime();
let blipCount = 0;

mysql.connections.query('SELECT * FROM `blips`', (err, rows, fields) => {
    if(rows) {
        rows.forEach(blipData => {
            let position = JSON.parse(blipData.position);

            mp.blips.new(blipData.sprite, new mp.Vector3(position.x, position.y, position.z), {
                name: blipData.name,
                scale: blipData.scale,
                color: blipData.color,
                alpha: blipData.alpha,
                drawDistance: blipData.drawDistance,
                shortRange: blipData.shortRange,
                rotation: blipData.rotation,
                dimension: blipData.dimension,
                radius: blipData.radius
            });

            blipCount++;
        });

        const preTime = new Date().getTime();
        console.log(`Блипов загружено: ${blipCount} (заняло ${((preTime - postTime) / 1000).toFixed(3)} секунд)`);
    }
});
