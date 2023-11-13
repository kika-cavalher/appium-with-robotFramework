
def factory_session(target):

    data = {
        'login': {
            'email': 'eu@papito.io',
            'pass': 'qaninja'
        },
        'register': {
            'name': 'Erica Cavalher',            
            'email': 'erica@gmail.io',
            'pass': 'Kika1234'
        }
    }

    return data[target]