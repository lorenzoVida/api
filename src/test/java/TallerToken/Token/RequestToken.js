function fn(s) {
    let bodyRequest = `
              {
                "card": {
                  "name": "${User}",
                  "number": "${numero}",
                  "expiryMonth": "12",
                  "expiryYear": "25",
                  "cvv": "364"
                },
                "totalAmount": 12,
                "currency": "PEN"
              }
    `;

    return JSON.parse(bodyRequest);
}