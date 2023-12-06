#! /usr/bin/python3
def pnr(val):
    print(val)
    return val

fn = "input01"
if __name__ == "__main__":
    out = 0;
    f = open(fn, "r")
    lines = f.readlines()
    for line in lines:
        it = 0
        ln = len(line)
        for c in line:
            if c.isnumeric():
                first = ord(c) - 48
                break
        for c in reversed(line):
            if c.isnumeric():
                last = ord(c) - 48
                break
        out += pnr(first * 10 + last);
    print(out)
