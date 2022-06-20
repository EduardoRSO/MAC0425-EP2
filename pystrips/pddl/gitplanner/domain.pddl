(define (domain git)

    (:requirements :strips :typing)

    (:types file)

    (:predicates
        ;; file exists in workspace but has never been source-controlled
        (untracked ?f - file)

        ;; a file modification has been added to the staging area but not committed
        (staged ?f - file)

        ;; all changes were added to the staging area and then committed.
        (committed ?f - file)

        ;; already tracked file has no modifications in workspace (typically after being committed)
        (clean ?f - file)

        ;; file has been modified but this change has not been staged
        (modified-in-workspace ?f - file)

        ;; file has been deleted but this change has not been staged
        (deleted-in-workspace ?f - file)
    )

    ;; git add <new-file>
    (:action git-add-new
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )

    ;; git add <old-file>
    (:action git-add
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )
    
    ;; git rm <old-file>
    (:action git-rm
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )
    
    ;; git checkout -- <old-file>
    (:action git-checkout
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )
    
    ;; git reset -- <old-file>
    (:action git-reset
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )
    
    ;; git reset -- <new-file>
    (:action git-reset-new
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )

    ;; git commit <file>
    (:action git-commit
        :parameters (?f - file)
        :precondition (and ...)
        :effect (and
            ...
        )
    )
)
