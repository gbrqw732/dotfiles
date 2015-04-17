;;http://qiita.com/aprikip@github/items/db350720bb32e244daea
(require 'solar)
(setq holiday-general-holidays nil
      holiday-local-holidays t
      holiday-solar-holidays nil
      holiday-bahai-holidays nil
      holiday-christian-holidays nil
      holiday-hebrew-holidays nil
      holiday-islamic-holidays nil
      holiday-oriental-holidays nil
      holiday-other-holidays nil
      mark-holidays-in-calendar t)
(setq holiday-local-holidays
      '((holiday-fixed 1 1 "元日")
    (holiday-float 1 1 2 "成人の日")
    (holiday-fixed 2 11 "建国記念の日")
    (holiday-sexp '(map 'list 'truncate (solar-equinoxes/solstices 0 year)) "春分の日")
    (holiday-fixed 4 29 "昭和の日")
    (holiday-fixed 5 3 "憲法記念日")
    (holiday-fixed 5 4 "みどりの日")
    (holiday-fixed 5 5 "こどもの日")
    (holiday-float 7 1 3 "海の日")
    (holiday-float 7 1 3 "敬老の日")
    (holiday-sexp '(map 'list 'truncate (solar-equinoxes/solstices 2 year)) "秋分の日")
    (holiday-float 10 1 2 "体育の日")
    (holiday-fixed 11 3 "文化の日")
    (holiday-fixed 11 23 "勤労感謝の日")
    (holiday-fixed 12 23 "天皇誕生日")
))
