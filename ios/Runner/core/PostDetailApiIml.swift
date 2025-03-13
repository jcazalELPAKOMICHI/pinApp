

import Foundation
import Flutter

class PostDetailApiIml: DetailApi {
    func search(baseUrl: String, endpoint: String, postId: Int64, completion: @escaping (Result<[PostDetail], any Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            var components = URLComponents(string: baseUrl+endpoint)!
                components.queryItems = [
                    URLQueryItem(name: "postId", value: String(postId) ),
                ]

            guard let url = components.url else { return }

               var request = URLRequest(url: url)
               request.httpMethod = "GET"

               let task = URLSession.shared.dataTask(with: request) { data, response, error in
                   if let error = error {
                              completion(.failure(error)) // Retornamos el error
                              return
                          }
                          
                          guard let data = data else {
                              completion(.failure(NSError(domain: "NoDataError", code: -1, userInfo: nil)))
                              return
                          }
                           
                           do {
                               let postDetailsModel = try JSONDecoder().decode([PostDetailModel].self, from: data)
                               
                               let postDetail = postDetailsModel.map{ model in
                                   PostDetail(
                                    postId: model.postId,
                                    id: model.id,
                                    name: model.name,
                                    email: model.email,
                                    body: model.body
                                   )
                               }
                               
                               completion(.success(postDetail)) // Retornamos la lista de objetos
                           } catch {
                               print("Error al decodificar JSON: \(error.localizedDescription)")
                               completion(.failure(error)) // Si hay un error de decodificación, lo retornamos
                           }
               }
            task.resume()
            
        }
    }
    
}
