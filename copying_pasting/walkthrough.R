library(tibble)
library(datapasta)

df1 <- tibble::tribble(
    ~Week.Ending,       ~Gross, ~Perc.Gross.Pot., ~Attendance, ~Perc.Capacity, ~Perc.Previews, ~Perc.Perf.,
  "May 27, 2018", "$2,987,818",        "109%",       10734,      "102%",          0L,       8L,
  "May 20, 2018", "$3,120,832",        "108%",       10754,      "102%",          0L,       8L,
  "May 13, 2018", "$2,816,606",        "107%",       10738,      "102%",          0L,       8L,
   "May 6, 2018", "$3,101,303",        "107%",       10757,      "102%",          0L,       8L,
  "Apr 29, 2018", "$2,823,279",        "107%",       10736,      "102%",          0L,       8L,
  "Apr 22, 2018", "$3,081,677",        "106%",       10756,      "102%",          0L,       8L,
  "Apr 15, 2018", "$3,139,968",        "108%",       10758,      "102%",          0L,       8L,
   "Apr 8, 2018", "$3,142,588",        "109%",       10760,      "102%",          0L,       8L,
   "Apr 1, 2018", "$2,882,014",        "110%",       10735,      "102%",          0L,       8L,
  "Mar 25, 2018", "$3,082,529",        "106%",       10753,      "102%",          0L,       8L,
  "Mar 18, 2018", "$3,151,020",        "109%",       10757,      "102%",          0L,       8L,
  "Mar 11, 2018", "$3,149,330",        "109%",       10753,      "102%",          0L,       8L,
   "Mar 4, 2018", "$3,070,115",        "117%",       10755,      "102%",          0L,       8L,
  "Feb 25, 2018", "$3,096,384",        "107%",       10752,      "102%",          0L,       8L,
  "Feb 18, 2018", "$3,088,002",        "107%",       10756,      "102%",          0L,       8L,
  "Feb 11, 2018", "$3,062,978",        "106%",       10754,      "102%",          0L,       8L,
   "Feb 4, 2018", "$2,789,366",        "106%",       10736,      "102%",          0L,       8L,
  "Jan 28, 2018", "$3,086,536",        "107%",       10755,      "102%",          0L,       8L,
  "Jan 21, 2018", "$3,096,068",        "107%",       10753,      "102%",          0L,       8L,
  "Jan 14, 2018", "$3,105,160",        "107%",       10759,      "102%",          0L,       8L,
   "Jan 7, 2018", "$3,132,598",        "108%",       10756,      "102%",          0L,       8L,
  "Dec 31, 2017", "$3,854,874",        "116%",       10754,      "102%",          0L,       8L,
  "Dec 24, 2017", "$3,797,844",        "115%",       10757,      "102%",          0L,       8L,
  "Dec 17, 2017", "$2,827,018",        "107%",       10734,      "102%",          0L,       8L,
  "Dec 10, 2017", "$2,909,360",        "100%",       10734,      "102%",          0L,       8L,
   "Dec 3, 2017", "$2,837,331",        "108%",       10734,      "102%",          0L,       8L,
  "Nov 26, 2017", "$3,453,772",        "112%",       10755,      "102%",          0L,       8L,
  "Nov 19, 2017", "$2,826,330",         "98%",       10734,      "102%",          0L,       8L,
  "Nov 12, 2017", "$3,143,107",        "109%",       10759,      "102%",          0L,       8L,
   "Nov 5, 2017", "$2,929,235",        "112%",       10754,      "102%",          0L,       8L,
  "Oct 29, 2017", "$2,665,092",        "111%",       10735,      "102%",          0L,       8L,
  "Oct 22, 2017", "$2,917,295",        "111%",       10757,      "102%",          0L,       8L,
  "Oct 15, 2017", "$2,930,747",        "112%",       10753,      "102%",          0L,       8L,
   "Oct 8, 2017", "$2,928,486",        "112%",       10757,      "102%",          0L,       8L,
   "Oct 1, 2017", "$2,941,667",        "112%",       10754,      "102%",          0L,       8L,
  "Sep 24, 2017", "$2,932,833",        "112%",       10759,      "102%",          0L,       8L,
  "Sep 17, 2017", "$2,932,511",        "112%",       10753,      "102%",          0L,       8L,
  "Sep 10, 2017", "$2,953,869",        "112%",       10753,      "102%",          0L,       8L,
   "Sep 3, 2017", "$2,987,202",        "114%",       10754,      "102%",          0L,       8L,
  "Aug 27, 2017", "$2,964,052",        "113%",       10758,      "102%",          0L,       8L,
  "Aug 20, 2017", "$2,969,573",        "113%",       10753,      "102%",          0L,       8L,
  "Aug 13, 2017", "$3,040,435",        "116%",       10757,      "102%",          0L,       8L,
   "Aug 6, 2017", "$3,046,154",        "116%",       10753,      "102%",          0L,       8L,
  "Jul 30, 2017", "$3,019,825",        "115%",       10755,      "102%",          0L,       8L,
  "Jul 23, 2017", "$3,033,266",        "115%",       10756,      "102%",          0L,       8L,
  "Jul 16, 2017", "$3,019,947",        "115%",       10755,      "102%",          0L,       8L,
   "Jul 9, 2017", "$3,061,008",        "116%",       10755,      "102%",          0L,       8L,
   "Jul 2, 2017", "$3,053,850",        "116%",       10753,      "102%",          0L,       8L,
  "Jun 25, 2017", "$3,043,232",        "116%",       10755,      "102%",          0L,       8L,
  "Jun 18, 2017", "$3,038,936",        "116%",       10753,      "102%",          0L,       8L,
  "Jun 11, 2017", "$2,741,983",        "115%",       10735,      "102%",          0L,       8L,
   "Jun 4, 2017", "$3,054,910",        "116%",       10754,      "102%",          0L,       8L,
  "May 28, 2017", "$2,759,708",        "115%",       10736,      "102%",          0L,       8L
  )

new_vector <- c("Week Ending", "Gross", "% Gross Pot.", "Attendance", "% Capacity", "% Previews", "% Perf.")

df2 <- data.frame(stringsAsFactors=FALSE,
    Week.Ending = c("May 27, 2018", "May 20, 2018", "May 13, 2018", "May 6,
                    2018", "Apr 29, 2018", "Apr 22, 2018", "Apr 15, 2018",
                    "Apr 8, 2018", "Apr 1, 2018", "Mar 25, 2018", "Mar 18, 2018",
                    "Mar 11, 2018", "Mar 4, 2018", "Feb 25, 2018", "Feb 18, 2018",
                    "Feb 11, 2018", "Feb 4, 2018", "Jan 28, 2018", "Jan 21, 2018",
                    "Jan 14, 2018", "Jan 7, 2018", "Dec 31, 2017", "Dec 24,
                    2017", "Dec 17, 2017", "Dec 10, 2017", "Dec 3, 2017", "Nov 26,
                    2017", "Nov 19, 2017", "Nov 12, 2017", "Nov 5, 2017", "Oct 29,
                    2017", "Oct 22, 2017", "Oct 15, 2017", "Oct 8, 2017", "Oct 1,
                    2017", "Sep 24, 2017", "Sep 17, 2017", "Sep 10, 2017",
                    "Sep 3, 2017", "Aug 27, 2017", "Aug 20, 2017", "Aug 13, 2017",
                    "Aug 6, 2017", "Jul 30, 2017", "Jul 23, 2017", "Jul 16, 2017",
                    "Jul 9, 2017", "Jul 2, 2017", "Jun 25, 2017", "Jun 18, 2017",
                    "Jun 11, 2017", "Jun 4, 2017", "May 28, 2017"),
          Gross = c("$2,987,818", "$3,120,832", "$2,816,606", "$3,101,303",
                    "$2,823,279", "$3,081,677", "$3,139,968", "$3,142,588",
                    "$2,882,014", "$3,082,529", "$3,151,020", "$3,149,330", "$3,070,
                   115", "$3,096,384", "$3,088,002", "$3,062,978", "$2,789,366",
                    "$3,086,536", "$3,096,068", "$3,105,160", "$3,132,598", "$3,
                   854,874", "$3,797,844", "$2,827,018", "$2,909,360", "$2,837,
                   331", "$3,453,772", "$2,826,330", "$3,143,107", "$2,929,235",
                    "$2,665,092", "$2,917,295", "$2,930,747", "$2,928,486", "$2,
                   941,667", "$2,932,833", "$2,932,511", "$2,953,869", "$2,987,
                   202", "$2,964,052", "$2,969,573", "$3,040,435", "$3,046,154",
                    "$3,019,825", "$3,033,266", "$3,019,947", "$3,061,008", "$3,
                   053,850", "$3,043,232", "$3,038,936", "$2,741,983", "$3,054,
                   910", "$2,759,708"),
   perc.Gross.Pot. = c("109%", "108%", "107%", "107%", "107%", "106%", "108%",
                    "109%", "110%", "106%", "109%", "109%", "117%", "107%",
                    "107%", "106%", "106%", "107%", "107%", "107%", "108%", "116%",
                    "115%", "107%", "100%", "108%", "112%", "98%", "109%",
                    "112%", "111%", "111%", "112%", "112%", "112%", "112%", "112%",
                    "112%", "114%", "113%", "113%", "116%", "116%", "115%", "115%",
                    "115%", "116%", "116%", "116%", "116%", "115%", "116%",
                    "115%"),
     Attendance = c(10734, 10754, 10738, 10757, 10736, 10756, 10758, 10760,
                    10735, 10753, 10757, 10753, 10755, 10752, 10756, 10754,
                    10736, 10755, 10753, 10759, 10756, 10754, 10757, 10734, 10734,
                    10734, 10755, 10734, 10759, 10754, 10735, 10757, 10753, 10757,
                    10754, 10759, 10753, 10753, 10754, 10758, 10753, 10757,
                    10753, 10755, 10756, 10755, 10755, 10753, 10755, 10753, 10735,
                    10754, 10736),
     perc.Capacity = c("102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%", "102%", "102%", "102%", "102%", "102%", "102%",
                    "102%"),
     perc.Previews = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                    0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                    0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L,
                    0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L),
        perc.Perf. = c(8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L,
                    8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L,
                    8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L,
                    8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L)
)
