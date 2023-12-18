//
//  AlertToast.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 18/12/23.
//

import SwiftUI

struct AlertToast: View {
    var displayMode: ToastView.DisplayMode
    var type: ToastView.ToastType
    var title: String
    
    var body: some View {
        ToastView(displayMode: displayMode, toastType: type, title: title)
    }
}
