let app = require('../app');
let assert = require('assert');
let test = require('supertest');

describe('GET /user', () => {
    it('responds with json', (done) => {
        test(app)
            .get('/users')
            .set('Accept', 'application/json')
            .expect('Content-Type', /json/)
            .expect(200, done);
    });
});