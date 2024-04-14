//
//  RMCharacterViewController.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 06/04/24.
//

import UIKit

// Control to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            //pathComponents: ["1"]
            queryParameters:[
                 URLQueryItem(name:"name",value:"rick"),
                 URLQueryItem(name:"status",value:"alive"),
            ]
            )
        print (request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) {result in
            }
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
