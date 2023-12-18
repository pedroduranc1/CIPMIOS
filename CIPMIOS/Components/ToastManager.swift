//
//  ToastManager.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 18/12/23.
//
import SwiftUI

struct ToastManager: ViewModifier {
    
    @Binding var isShowing: Bool
    var toastConfig: ToastConfig

    func body(content: Content) -> some View {
        ZStack {
            content
            toastView
        }
    }
    
    var toastView: some View {
        ZStack {
            if isShowing {
                Group {
                    Text(toastConfig.message)
                }
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(Color.black.opacity(0.8))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut, value: isShowing)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                isShowing = false
                            }
                        }
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .edgesIgnoringSafeArea(.bottom)
    }
}

// Resto del código igual...

struct ToastConfig {
    var message: String
}

extension View {
    func toast(isShowing: Binding<Bool>, toastConfig: ToastConfig) -> some View {
        modifier(ToastManager(isShowing: isShowing, toastConfig: toastConfig))
    }
}
