#lang racket
(require gigls/unsafe)
(define world (image-new 300 200))
(define tommy (turtle-new world))
(define trish (turtle-new world))
(define tucker (turtle-new world))
(image-show world)

;;; Procedure:
;;;   turtle-center!
;;; Parameters:
;;;   turtle, a turtle
;;; Purpose:
;;;   Places turtle at the center of its world, facing right.
;;; Produces:
;;;   turtle, the same turtle
(define turtle-center!
  (lambda (turtle)
    (turtle-teleport! turtle
                      (/ (image-width (turtle-world turtle)) 2)
                      (/ (image-height (turtle-world turtle)) 2))
    (turtle-face! turtle 0)))

(define figure02!
  (lambda (turtle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle 120)
    (turtle-turn! turtle 30)
    (turtle-forward! turtle 10)))

(define figure04!
  (lambda (turtle angle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle angle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle angle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle angle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle angle)
    (turtle-forward! turtle 50)
    ))

(define figure!
  (lambda (turtle)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 60)))

; Extra 2
(define turtle-center!
  (lambda (turtle)
    (turtle-teleport! turtle
                      (/ (image-width (turtle-world turtle)) 2)
                      (/ (image-height (turtle-world turtle)) 2))
    (turtle-face! turtle 0)))

(define figure!
  (lambda (turtle)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 60)))

(define Six-pointed-star
  (lambda (turtle)
    (turtle-center! turtle)
    (figure! turtle)
    (turtle-face! turtle 90)
    (turtle-up! turtle)
    (turtle-forward! turtle (* 20 (sqrt 3)))
    (turtle-down! turtle)
    (turtle-face! turtle 0)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle -120)
    (turtle-forward! turtle 60)
    (turtle-turn! turtle -120)
    (turtle-forward! turtle 60)))