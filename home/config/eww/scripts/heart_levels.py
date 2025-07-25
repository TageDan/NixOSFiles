#!/etc/profiles/per-user/tage/bin/python3

val = 0
with open("/sys/class/power_supply/BAT1/capacity", "r") as file:
    val = int(file.read())

if val < 100/13:
    print('[0,0,0]')
elif val < 100/13 * 2:
    print('[1,0,0]')
elif val < 100/13 * 3:
    print('[2,0,0]')
elif val < 100/13 * 4:
    print('[3,0,0]')
elif val < 100/13 * 5:
    print('[4,0,0]')
elif val < 100/13 * 6:
    print('[4,1,0]')
elif val < 100/13 * 7:
    print('[4,2,0]')
elif val < 100/13 * 8:
    print('[4,3,0]')
elif val < 100/13 * 9:
    print('[4,4,0]')
elif val < 100/13 * 10:
    print('[4,4,1]')
elif val < 100/13 * 11:
    print('[4,4,2]')
elif val < 100/13 * 12:
    print('[4,4,3]')
else:
    print('[4,4,4]')
