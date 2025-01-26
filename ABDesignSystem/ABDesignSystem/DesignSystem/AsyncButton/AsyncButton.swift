//
//  AsyncButton.swift
//  ABDesignSystem
//
//  Created by Akash Boghani on 26/01/25.
//

import SwiftUI

/// A reusable SwiftUI view for an asynchronous button with a customizable label and progress indicator.
/// The button displays a progress view while executing the asynchronous action.
struct AsyncButton<Label: View, Progress: View>: View {
    // MARK: - Private Properties
    
    /// The asynchronous action to perform when the button is tapped.
    private let action: () async -> Void
    
    /// The label view for the button.
    private let label: Label
    
    /// The progress indicator view displayed while the action is in progress.
    private let progress: Progress
    
    // MARK: - State Properties
    
    /// A reference to the currently running task. Used to prevent multiple simultaneous executions.
    @State private var task: Task<Void, Never>?
    
    /// Indicates whether the action is currently being executed.
    @State private var isLoading = false
    
    // MARK: - Life Cycle
    
    /// Initializes the `AsyncButton` with an action, label, and progress view.
    /// - Parameters:
    ///   - action: The asynchronous action to perform when the button is tapped.
    ///   - label: A closure returning the label view for the button.
    ///   - progress: A closure returning the progress view for the button.
    init(
        action: @escaping () async -> Void,
        @ViewBuilder label: @escaping () -> Label,
        @ViewBuilder progress: @escaping () -> Progress
    ) {
        self.action = action
        self.label = label()
        self.progress = progress()
    }
    
    // MARK: - Body
    
    var body: some View {
        Button(action: handelTask) {
            Group {
                // Switch between the progress view and the label view based on the loading state.
                if isLoading {
                    progress
                        .transition(.opacity) // Smooth opacity transition when switching to progress.
                } else {
                    label
                        .transition(.opacity) // Smooth opacity transition when switching back to label.
                }
            }
        }
        .disabled(isLoading) // Disable the button while the action is running.
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: isLoading) // Animate the state changes.
    }
    
    // MARK: - Private Function
    
    /// Handles the button action by executing the provided asynchronous task.
    private func handelTask() {
        // Prevent multiple executions of the task.
        guard task == nil else { return }
        
        // Indicate that the action is in progress.
        isLoading = true
        
        // Create a new task to execute the asynchronous action.
        task = Task {
            await action() // Execute the provided asynchronous action.
            
            // Reset the state after the task completes.
            isLoading = false
            task = nil
        }
    }
}

#Preview {
    AsyncButton {
        do {
            if #available(iOS 16.0, *) {
                // Simulate a 5-second delay to test the progress indicator.
                try await Task.sleep(for: .seconds(5))
                print("Task Complete")
            }
        } catch {
            // Handle errors (if any) during task execution.
            print(error.localizedDescription)
        }
    } label: {
        Text("Try me!") // The button label.
    } progress: {
        ProgressView()
            .tint(Theme.Colors.background) // The progress indicator's color.
    }
    .buttonStyle(.primary(bgColor: Theme.Colors.primary, textColor: Theme.Colors.background)) // Apply a custom button style.
    .padding(.horizontal, 16) // Add horizontal padding.
}
