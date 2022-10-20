
# [x] 1- Mapear Labels e Operações
#      1.1- Contar apenas linhas que tenham operações ou labels (skipar linhas de comentários) 
# [x] 2- Separar Comentários (# ou --) de comandos
# [x] 3- Traduzir NOP, SOMA, SUB como minemônicos (o arquivo decoderInstru terá o significado de cada minemônico)
# [x] 4- Adicionar comando JMP @LABEL no regex
import os
import re


class Assembler:
    def __init__(self):
        self.input_file = os.path.join(os.getcwd(), 'assembler', 'input', 'test.txt')
        self.output_file = './output/program.bin'

        self.labels = {}
        self.codes = []

        self.op_codes = ['NOP', 'LDA','SOMA', 'SUB','LDI', 'STA','JMP','JEQ','CEQ','JSR','RET', ]

    def read(self):
        with open(self.input_file, 'r') as file:
            return file.readlines()

    def write(self, data):
        with open(self.output_file, 'w') as file:
            file.write(data)

    def find_comments(self, line):
        match = re.search(r'(#|--)', line)
        comentario = None
        if match:
            # É linha de comentário ou comentário sobre comando ?
            if match.start() == 0:
                # linha de comentário --> Não adicionar ao programa
                comentario = line
            else:
                comentario = line[match.start():]
        return comentario

    def find_label(self, line):
        label = None
        c_match = re.search(r'(#|--)', line)
        l_match = re.search(r':', line)

        if l_match:
            if c_match:
                # checar se o match é válido e não apenas pontuação de comentários
                if l_match.start() < c_match.start():
                    label = line[:l_match.start()]
                    #comentario = line[l_match.start():]
                else:
                    label = None
                    #comentario = line
            else:
                label = line.strip()[:l_match.start()]

        return label

    def find_commands(self, line):
        regex = f"(({'|'.join([f'({op_code})' for op_code in self.op_codes])})"+r'\s*([@$]|\w*)?\d*)'
        match = re.search(regex, line)
        
        if match:
            return match.group()
        else:
            return None

    def map(self):
        lines = self.read()
        n = 1   # aponta para a próxima instrução

        for line in lines:
            if line is not None:
                line = line.replace('\n', '')
                comando, label, comentario = None, None, None

                comentario = self.find_comments(line)
                label = self.find_label(line)
                comando = self.find_commands(line)
                
                if comando:
                    self.codes.append(comando)
                    n += 1

                if label:
                    # Guarda label no dicionário com a posição do próximo comando
                    self.labels[label] = n


                print(line.strip(), f" --> {comando} | {label} | {comentario}")
            
            


if __name__ == '__main__':
    assembler = Assembler()
    assembler.map()

    print(assembler.labels)
    print(assembler.codes)