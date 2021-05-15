def word_switch(sent):
    if (len(sent) == 0):
        return sent

    if (sent[0] == 'I' or sent[0] == 'me'):
        return
