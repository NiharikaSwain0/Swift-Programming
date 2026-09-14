//guard condition else{
//false:execute
//}


func divideTheNumbers(divisor:Int, dividend:Int){
//    if divisor != 0{
//        print(dividend/divisor)
//    }
    guard divisor != 0 else{
        return
    }
    print(dividend/divisor)
}

func rateTheBook(publicationDate:Int?){
    if let publication=publicationDate{
        print("Book is published:\(publication)")
    }else{
        print("Not published")
    }
}
rateTheBook(publicationDate: 2026)

func rateTheBookUsingGuard(publicationDate:Int?){
    guard let publication = publicationDate else{
        print("Book is not published yet")
        return
    }
    print("Book is published:\(publication)")
}
rateTheBookUsingGuard(publicationDate: nil)
