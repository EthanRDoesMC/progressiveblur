//
//  BlurEffectStyleExtension.swift
//  progressiveblur
//
//  Created by Ethan Chaffin on 1/9/22.
//

import Foundation
import UIKit

extension UIBlurEffect.Style: CaseIterable {
    public static var allCases: [UIBlurEffect.Style] {
        return [.extraLight,.light,.dark,.regular,.prominent,.systemUltraThinMaterial,.systemThinMaterial,.systemMaterial,.systemThickMaterial,.systemChromeMaterial,.systemUltraThinMaterialLight,.systemThinMaterialLight,.systemMaterialLight,.systemThickMaterialLight,.systemChromeMaterialLight,.systemUltraThinMaterialDark,.systemThinMaterialDark,.systemMaterialDark,.systemThickMaterialDark,.systemChromeMaterialDark]
    }
    public var description: String {
        var description = ""
        switch self {
        case .extraLight:
            description = ".extraLight"
        case .light:
            description = ".light"
        case .dark:
            description = ".dark"
        case .regular:
            description = ".regular"
        case .prominent:
            description = ".prominent"
        case .systemUltraThinMaterial:
            description = ".systemUltraThinMaterial"
        case .systemThinMaterial:
            description = ".systemThinMaterial"
        case .systemMaterial:
            description = ".systemMaterial"
        case .systemThickMaterial:
            description = ".systemThickMaterial"
        case .systemChromeMaterial:
            description = ".systemChromeMaterial"
        case .systemUltraThinMaterialLight:
            description = ".systemUltraThinMaterialLight"
        case .systemThinMaterialLight:
            description = ".systemThinMaterialLight"
        case .systemMaterialLight:
            description = ".systemMaterialLight"
        case .systemThickMaterialLight:
            description = ".systemThickMaterialLight"
        case .systemChromeMaterialLight:
            description = ".systemChromeMaterialLight"
        case .systemUltraThinMaterialDark:
            description = ".systemUltraThinMaterialDark"
        case .systemThinMaterialDark:
            description = ".systemThinMaterialDark"
        case .systemMaterialDark:
            description = ".systemMaterialDark"
        case .systemThickMaterialDark:
            description = ".systemThickMaterialDark"
        case .systemChromeMaterialDark:
            description = ".systemChromeMaterialDark"
        @unknown default:
            description = "unknown"
        }
        return description
    }
}
