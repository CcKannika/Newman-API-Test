const newman = require('newman');
 
newman.run({
    collection: require('./Test GET API Newman.postman_collection.json'),
    reporters: 'cli'
}, function (err) {
    if (err) { throw err; }
    console.log('collection GET For Newman');
});

newman.run({
    collection: require('./Test POST API Newman.postman_collection.json'),
    reporters: 'cli'
}, function (err) {
    if (err) { throw err; }
    console.log('collection POST For Newman');
});

newman.run({
    collection: require('./Test Basic Authentication API Newman.postman_collection.json'),
    reporters: 'cli'
}, function (err) {
    if (err) { throw err; }
    console.log('collection Basic Authentication For Newman');
});

newman.run({
    collection: require('./Test assertion fails API Newman.postman_collection.json'),
    reporters: 'cli',
    bail: true
}, function (err) {
    if (err) { throw err; }
    console.log('collection assertion fails For Newman');
});

