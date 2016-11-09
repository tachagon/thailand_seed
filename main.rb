require_relative('th_location')

provinces = th_location()

all_provinces = provinces.size
all_amphurs = 0
all_districts = 0
provinces.each { |province, amphurs|

    puts "#{province} (#{amphurs.size} อำเภอ)"
    sum_districts = 0
    all_amphurs += amphurs.size

    amphurs.each { |amphur, districts|

        sum_districts += districts.size
        all_districts += districts.size
        puts "  อำเภอ : #{amphur} (#{districts.size} ตำบล)"

        districts.each { |district, data|
            puts "      ตำบล : #{district} : #{data[:zipcode]} : (#{data[:latitude]}, #{data[:longitude]})"
        }
    }
    puts "#{province}"
    puts "  #{amphurs.size} อำเภอ"
    puts "  #{sum_districts} ตำบล"
}

puts "-----------------------------------"
puts "ประเทศไทย #{all_provinces} จังหวัด ; #{all_amphurs} อำเภอ ; #{all_districts} ตำบล"