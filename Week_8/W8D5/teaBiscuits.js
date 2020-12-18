const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    let first, second;

    reader.question('Would you like some tea?', (res) => {
        console.log(`You replied ${res}.`);
        const firstRes = (res === 'yes') ? 'do' : 'don\'t';

        reader.question('Would you like some biscuits?', (res) => {
            console.log(`You replied ${res}.`);
            const secondRes = (res === 'yes') ? 'do' : 'don\'t';

            console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
            reader.close();
        });
    });
}

teaAndBiscuits();