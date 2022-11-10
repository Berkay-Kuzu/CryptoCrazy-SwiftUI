# CryptoCrazy-SwiftUI

This is an app which the users can get different crypto currencies. I created this app with SwiftUI and designed with MVVM design pattern. This app has a different coding style compared to Crypto-Crazy-SwiftUI which I uploaded before. In this app, I recoded the app by using async throws and try await. In that sense, this app is coded much more succinct and clear way than the previous one. Furthermore, I benefited from @ObservedObject to establish a bond between View and View Model. In Model file, I created model by using struct which has Hashable, Decodable, and Identifiable protocols. Also, inside struct, there is a private enum CodingKeys to work id, currency, price properly one another. In View Model, I created a class which has ObservableObject protocol. In addition, I used @Published in order to connect with View and View Model. Also, I downloaded crypto currency data in this file. I demonstrated the data came from Json file in the form of a list.


<img width="360" alt="cryptocrazy1" src="https://user-images.githubusercontent.com/92036779/201098697-250e8c05-b1e2-49ff-8709-de2ba166c5b0.png">
<img width="360" alt="cryptocrazy2" src="https://user-images.githubusercontent.com/92036779/201098728-7346a603-23ed-4831-a777-241efaefeb03.png">
