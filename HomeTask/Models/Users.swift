//
//  Users.swift
//  HomeTask
//
//  Created by Oyatullo Koraboev on 03/06/23.
//

import Foundation

struct Users:Hashable{
    let id = UUID()
    let name:String
    let image:String
    let description:String
}
