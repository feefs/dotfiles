GREEN = "\033[0;32m"
YELLOW = "\033[0;33m"
RED = "\033[0;31m"
MAGENTA = "\033[0;35m"
BLUE = "\033[0;34m"
RESET = "\033[0m"
lines = []


def colorize(string, color):
  lines.append(color + string + RESET)


colorize("                 ,MMMM.", GREEN)
colorize("               .MMMMMM", GREEN)
colorize("               MMMMM,", GREEN)
colorize("     .;MMMMM:' MMMMMMMMMM;.", YELLOW)
colorize("   MMMMMMMMMMMMNWMMMMMMMMMMM:", YELLOW)
colorize(" .MMMMMMMMMMMMMMMMMMMMMMMMWM.", YELLOW)
colorize(" MMMMMMMMMMMMMMMMMMMMMMMMM.", RED)
colorize(";MMMMMMMMMMMMMMMMMMMMMMMM:", RED)
colorize(":MMMMMMMMMMMMMMMMMMMMMMMM:", RED)
colorize(".MMMMMMMMMMMMMMMMMMMMMMMMM.", MAGENTA)
colorize(" MMMMMMMMMMMMMMMMMMMMMMMMMMM.", MAGENTA)
colorize("  .MMMMMMMMMMMMMMMMMMMMMMMMMM.", MAGENTA)
colorize("    MMMMMMMMMMMMMMMMMMMMMMMM", BLUE)
colorize("     ;MMMMMMMMMMMMMMMMMMMM.", BLUE)
colorize("       .MMMM,.    .MMMM,.", BLUE)

with open("./apple.ascii", "w") as f:
  for l in lines[:-1]:
    f.write(" {}  \n".format(l))
  f.write(" {}  ".format(lines[-1]))
