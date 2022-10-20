
import os
import re

"""
    - Salvar U, D, C
    - Retorno de subrotina
    - Endereços base de acesso


"""

class Assembler:
    """
        Montador que transforma uma sequência de linhas de comandos legíveis em uma sequência de instruções em VHDL, obedecendo o seguinte template:
            tmp(<# instrucao>) := <comando> & x"<argumento>";

        A classe aceita a seguinte lista de comandos:
            NOP, SOMA, SUB, LDI, LDA, STA, JMP, JEQ, CEQ, JSR, RET

        #! Comandos que não estão nessa lista não serão detectados e serão ignorados

        A classe também é flexível quanto a forma como os argumentos são escritos. Não é necessário fixar a quantidade de espaços entre o comando e o argumento, nem a quantidade de espaços ou tabs no início da linha.

        Ela também detecta comentários (que começam com # ou --) e ignora-os, seja uma linha toda de comentário ou comentários após a instrução.

        Ela detecta labels (que terminam com :) e os guarda em um dicionário, associando o nome do label ao número da próxima instrução. 
            - Caso algum comentário seja encontrado após o label, ele é ignorado.
            - Caso algum : seja encontrado em um comentário, ele é devidamente classificado como comentário.
    
    
    """
    def __init__(self):
        cwd = os.getcwd()
        
        self.input_dir = os.path.join(cwd, 'input')
        self.output_dir = os.path.join(cwd, 'output')

        self.input_file = os.path.join(self.input_dir, 'input.txt')
        self.output_file = os.path.join(self.output_dir, 'assembly.txt')

        self.labels = {}
        self.codes = []

        self.op_codes = ['NOP', 'LDA','SOMA', 'SUB','LDI', 'STA','JMP','JEQ','CEQ','JSR','RET', ]
        self.regs = {
            'R0': '00',
            'R1': '01',
            'R2': '10',
            'R3': '11',
        }

    def read(self):
        with open(self.input_file, 'r') as file:
            return file.readlines()

    def write(self, data):
        try:
            os.makedirs(self.output_dir)
        except FileExistsError:
            pass
        finally:
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
        regex = f"(({'|'.join([f'({op_code})' for op_code in self.op_codes])})" + r"\s*([@$](\d*)(\w*))?)"
        match = re.search(regex, line)
        
        if match:
            match_args = re.search(r'([@$](\d*)?(\w*))', match.group())
            if match_args:
                args = match_args.group()
                commands = match.string[match.start(): match_args.start()]
            else:
                commands = match.group()
                args = None

            return (commands, args)
        else:
            return (None, None)

    def int_to_hex(self, int) -> str:
        return "x%0.3X" % int

    def map(self):
        lines = self.read()
        pc = 0   # aponta para a próxima instrução

        for line in lines:
            if line is not None:
                line = line.replace('\n', '')
                command, label, comment = None, None, None

                comment = self.find_comments(line)
                label = self.find_label(line)
                command, arg = self.find_commands(line)
                
                print(line, "-->", command, "|",  arg)
                if command:
                    self.codes.append((command, arg))
                    pc += 1

                if label:
                    # Guarda label no dicionário com a posição do próximo comando
                    self.labels[label] = pc 

                # TODO: - Transpor comentário ao binário

    def assemble(self):
        self.map()

        output = []
        for count, code in enumerate(self.codes):
            # separa instrução em minemônico e argumento
            op = code[0]
            arg = code[1]

            reg = 'R0'
            arg_hex = '000'
            if arg:
                match_int = re.search(r'(\d+)', arg)
                match_label = re.search(r'(\w+)', arg)
                if match_int:
                    arg_int = int(match_int.group())
                elif match_label:
                    arg_int = self.labels[match_label.group()]

                arg_hex = self.int_to_hex(arg_int)[1:]
            cmd_str = f'tmp({count}) := {op.ljust(4)} & "{self.regs[reg]}" & \'{arg_hex[0]}\' & x"{arg_hex[1:3]}";'
            output.append(cmd_str)

        self.write('\n'.join(output))

if __name__ == '__main__':
    assembler = Assembler()
    assembler.assemble()
