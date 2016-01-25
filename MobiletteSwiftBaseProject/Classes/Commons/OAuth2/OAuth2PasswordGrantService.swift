//
//  OAuth2PasswordGrantService.swift
//  MobiletteSwiftBaseProject
//
//  Created by Benaly Issouf M'sa on 25/01/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import Foundation
import p2_OAuth2
import MobiletteFoundation
import PromiseKit

class WildOAuth2APIService
{
    // MARK: - Property
    
    private let oauth2 = OAuth2PasswordGrant(settings: [
        "client_id": "<# Client ID#>",
        "client_secret": "<# Client secret#>",
        "authorize_uri": "<# Authorize uri#>",
        "token_uri": "<# Token uri #>",
        //"scope": "public write",
        "verbose": true,
        ] as OAuth2JSON)
    
    init()
    {
        
    }
    
    func signInUser(username: String, password: String) -> Promise<String>
    {
        return Promise<String> { fullfil, reject in
            oauth2.username = username
            oauth2.password = password
            
            oauth2.onAuthorize = { parameters in
                self.didAuthorizeWithAccessToken(parameters, username: self.oauth2.username
                )
                fullfil("\(parameters)")
            }
            oauth2.onFailure = { error in
                self.didCancelOrFail(error)
                if let error = error {
                    reject(error)
                }
            }
            oauth2.authorize()
        }
    }
    
    func forgetToken()
    {
        oauth2.forgetTokens()
    }
    
    private func didAuthorizeWithAccessToken(parameters: OAuth2JSON, username: String)
    {
        if let refreshToken = parameters["refresh_token"], let accessToken = parameters["access_token"], let date = parameters["expires_in"] as? NSDate
        {
            let authenfication = MBOAuthCredential(userIdentifier: username, accessToken: "\(accessToken)", refreshToken: "\(refreshToken)", expirationDate: date)
            authenfication.isAuthenticated()
        }
    }
    
    private func didCancelOrFail(error: ErrorType?)
    {
        if let error = error {
            print("Authorization went wrong: \(error)")
        }
    }
}