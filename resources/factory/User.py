
def factory_session(target):

    data = {
        'login': {
            'email': 'eu@papito.io',
            'pass': 'qaninja'
        }
    }

    return data[target]