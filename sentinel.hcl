import "time"

# Expect requests to only happen during work days (Monday through Friday)
# 0 for Sunday and 6 for Saturday
workdays = rule {
    time.now.weekday > 0 and time.now.weekday < 6
}

# Expect requests to only happen during work hours (7:00 am - 6:00 pm)
workhours = rule {
    time.now.hour > 0 and time.now.hour < 23
}

main = rule {
    workdays and workhours
}