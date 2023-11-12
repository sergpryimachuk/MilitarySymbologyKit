//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//  

import Foundation
import SwiftUI

struct Symbol {
    var context: Context = .reality
    var standartIdentity: StandardIdentity = .hostile
    var dimention: Dimension = .landUnits
    var status: Status = .present
    var hqtfDummy: HQTFDummy = .notApplicable
    var amplifier: Amplifier = .notApplicable
    var descriptor: AnyDescriptor = AnyDescriptor(NotApplicableDescriptor.notApplicable)
    
    var isCivilian: Bool = false
    
    func makeFrame() -> Image {
        
        var lastDigit: String {
            let initial = if Int(status.id)! > 1 {
                "0"
            } else {
                status.id
            }
            
            if isCivilian {
                return initial + "c"
            } else {
                return initial
            }
        }
        
        return Image(context.id + "_" + standartIdentity.id + dimention.id + "_" + lastDigit)
    }
    
    func makeAmplifier() -> some View {
        
        var firsDigit: String!
        
        switch standartIdentity {
        case .pending:
            firsDigit = StandardIdentity.unknown.id
        case .assumedFriend:
            firsDigit = StandardIdentity.friend.id
        case .suspect:
            firsDigit = StandardIdentity.hostile.id
        default:
            firsDigit = standartIdentity.id
        }
        
        return Image(firsDigit + amplifier.id + descriptor.id)
            .resizable()
            .scaledToFit()
    }
}
