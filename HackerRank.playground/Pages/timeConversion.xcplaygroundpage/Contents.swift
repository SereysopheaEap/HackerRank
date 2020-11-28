import UIKit

/*
Given a time in -hour AM/PM format, convert it to military (24-hour) time.

Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
*/

func timeConversion(s: String) -> String? {
  let df = DateFormatter()
  df.dateFormat = "hh:mm:ssa"

  if let date = df.date(from: s) {
    df.dateFormat = "HH:mm:ss"
    let date24 = df.string(from: date)
    return date24
  }
  return nil
}

let test1 = "07:05:45PM"
let test2 = "12:00:00AM"
let test3 = "12:00:00PM"
let test4 = "7:05:00AM"

[test1, test2, test3, test4].forEach {
  if let conversion = timeConversion(s: $0) {
    print("\($0) [hour AM/PM] = \(conversion) military (24-hour) time")
  }
}
