//
//  Created with ♥ by Serhii Pryimachuk on 10.11.2023.
//  

import Foundation
import SwiftUI

struct Symbol {
    private let version: String = "01"
    var context: Context = .reality
    var standartIdentity: StandardIdentity = .unknown
    var dimention: Dimension = .air
    var status: Status = .present
    var hqtfd: HQTFD = .taskForceHeadquarters
    var amplifier: Amplifier = .notApplicable
    var descriptor: AnyDescriptor = AnyDescriptor(NotApplicableDescriptor.notApplicable)
    
    var isCivilian: Bool = false
    
    func makeSIDC() -> String {
        version + context.id + standartIdentity.id + dimention.id + status.id + hqtfd.id + amplifier.id + descriptor.id + "0000000000"
    }
    
    func makeFrame() -> some View {
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
        
        return Image(context.id + "_" + standartIdentity.id + dimention.assetDigit + "_" + lastDigit)
            .resizable()
            .scaledToFit()
    }
    
    func makeAmplifier() -> some View {
        return Image(standartIdentity.assetGigit + amplifier.id + descriptor.id)
            .resizable()
            .scaledToFit()
    }
    
    // Uses SIDC positions 4-6 (standartIdentity-dimention) and position 8 (hqtfd).
    func makeHQTFFD() -> some View {
        return Image(standartIdentity.assetGigit + dimention.assetDigit + hqtfd.id)
            .resizable()
            .scaledToFit()
    }
}
