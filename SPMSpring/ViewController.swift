//
//  ViewController.swift
//  SPMSpring
//
//  Created by Сампилов Ильдар on 02.11.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var runButton: SpringButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animatedView: SpringView!
    
    private var preset: String = "slideDown"
    private var curve: String = "easeInQuint"
    private var force: Double = 1.35
    private var duration: Double = 1.07
    private var delay: Double = 0.30
    
    private var randomPreset: [String] = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing",
    ]
    
    private var randomCurve: [String] = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack",
    ]

    private var randomForce = Array(stride(from: 1.5, through: 2, by: 0.1))
    private var randomDuration = Array(stride(from: 0.5, through: 1, by: 0.1))

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLabels()
    }

    @IBAction func runButtonTapped(_ sender: SpringButton) {
        animatedView.animation = preset
        animatedView.curve = curve
        animatedView.force = force
        animatedView.duration = duration
        animatedView.delay = delay
        animatedView.animate()

        preset = randomPreset.randomElement() ?? "slideDown"
        curve = randomCurve.randomElement() ?? "easeInQuint"
        force = randomForce.randomElement() ?? 1.5
        duration = randomDuration.randomElement() ?? 1

        setupLabels()
        runButton.setTitle(preset, for: .normal)
    }

    private func setupLabels() {
        presetLabel.text = preset
        curveLabel.text = curve
        forceLabel.text = String(force)
        durationLabel.text = String(duration)
        delayLabel.text = String(delay)
    }
}
