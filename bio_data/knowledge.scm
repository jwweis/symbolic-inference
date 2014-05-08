;; Biological data

;; (define compound_obj_aliases
;;   (list
;;    (cons "shooting guards" (list 'kobe 'wade 'mj 'jordan))
;;    ))

;; (define simple-context
;;   (list
;;    (cons "title" "title1")
;;    (cons "author" "author1")
;;    (cons "year" "year1")
;;    (cons "university" "univ1")
;;    (cons "topic" "topic1")
;;    (cons "journal" "journal1")
;;    (cons "pubmed" "pubmed1")
;;    (cons "locations" (list "loc_a1" "loc_b1"))
;;    ))

;; (define knowledge
;;   (list
;;    (list 'CAUSE '(thing-1 thing-2) simple-context)
;;    (list 'CAUSE '(thing-2 thing-3) simple-context)
;;    (list 'CAUSE '(thing-2 thing-4) simple-context)
;;    (list 'UPREGULATE '(monster-1 monster-2) simple-context)
;;    (list 'DOWNREGULATE '(monster-2 monster-3) simple-context)
;;    (list 'DOWNREGULATE '(monster-2 monster-4) simple-context)
;;    ))

;; (pp compound_obj_aliases)
;; (pp knowledge)
;; (pp "knowledge done")

(define wnt-pathway-context
  (list
   (cons "title" "The Wnt signalling pathway")
   (cons "author" "Huelsken, J., and Juergen, B.")
   (cons "year" "2000")
   (cons "university" "Max Delbrueck Center for Molecular Medicine")
   (cons "topic" "Cell biology")
   (cons "journal" "J. Cell Sci.")
   (cons "pubmed" "Unknown.")
   (cons "locations" (list "loc_a1" "loc_b1"))))

(define hormone-context
  (list
   (cons "title" "The Hallmarks of Cancer")
   (cons "author" "Hanahan, D., and Weinberg, R.A.")
   (cons "year" "2000")
   (cons "university" "University of California at San Francisco")
   (cons "topic" "Cancer")
   (cons "journal" "Cell")
   (cons "pubmed" "10647931")
   (cons "locations" (list "loc_a1" "loc_b1"))))

(define cytokine-context
  (list
   (cons "title" "The Hallmarks of Cancer")
   (cons "author" "Hanahan, D., and Weinberg, R.A.")
   (cons "year" "2000")
   (cons "university" "University of California at San Francisco")
   (cons "topic" "Cancer")
   (cons "journal" "Cell")
   (cons "pubmed" "10647931")
   (cons "locations" (list "loc_a1" "loc_b1"))))

(define knowledge
  (list
   ;; Wnt signaling pathway
   '(CAUSE (WNT Frizzled WNT:Frizzled) wnt-pathway-context)
   '(CAUSE (WNT:Frizzled Dishevelled) wnt-pathway-context)
   '(CAUSE (Dishevelled GSK-3Beta) wnt-pathway-context)
   '(CAUSE (GSK-3Beta APC) wnt-pathway-context)
   '(CAUSE (APC Beta-Cetenin) wnt-pathway-context)
   '(CAUSE (Other-cell E-Cadherin Beta-Catenin) wnt-pathway-context)
   '(CAUSE (Beta-Catenin TCF Beta-Catenin:TCF) wnt-pathway-context)
   '(CAUSE (Beta-Catenin:TCF Changes-in-gene-expression))

   ;; Hormone pathway
   '(CAUSE (Estrogen ER) hormone-context)
   '(CAUSE (ER Changes-in-gene-expression) hormone-context)
   '(CAUSE (Bombesin 7-TMR G-protein) hormone-context)
   '(CAUSE (G-protein Ad-Cyclin) hormone-context)
   '(CAUSE (Ad-Cyclin PKA) hormone-context)
   '(CAUSE (PKA CREB) hormone-context)
   '(CAUSE (CREB Changes-in-gene-expression) hormone-context)

   ;; Cytokine Pathway
   '(CAUSE (Cytokines Cytokine-R Jaks) cytokine-context)
   '(CAUSE (Jaks Stat3) cytokine-context)
   '(CAUSE (Jaks Stat5) cytokine-context)
   '(CAUSE (Stat3 BclXL) cytokine-context)
   '(CAUSE (Stat5 BclXL) cytokine-context)
   '(CAUSE (Stat3 Changes-in-gene-expression) cytokine-context)
   '(CAUSE (Stat4 Changes-in-gene-expression) cytokine-context)
   ))
